#> api:damage/core/give_damage
#

# リセット
	data modify storage api: out.GiveDamage set value false

# create_attack_dataを経由しない呼び出しでも属性情報を保証する。
	execute unless data storage api: in.AttackData.Element run data modify storage api: in.AttackData.Element set value "physical"
	execute unless data storage api: in.AttackData.Tags run data modify storage api: in.AttackData.Tags set value []
	execute unless data storage api: in.AttackData{Element:"physical"} unless data storage api: in.AttackData{Element:"magic"} unless data storage api: in.AttackData{Element:"light"} unless data storage api: in.AttackData{Element:"holy"} unless data storage api: in.AttackData{Element:"fire"} unless data storage api: in.AttackData{Element:"thunder"} unless data storage api: in.AttackData{Element:"wind"} unless data storage api: in.AttackData{Element:"water"} run return fail

# マクロに必要なデータを取得する
	data modify storage api:temp ID set from storage api: in.AttackData.ID
	data modify storage api:temp UUID set from entity @s UUID

# 過去に受けた攻撃のDamageInfoを取得する
	function api:damage/core/get_damage_info.m with storage api:temp

# ダメージを与えられるか判定する
	execute unless data storage api:temp DamageInfo{RemainingHitCount:0} run data modify storage api: out.GiveDamage set value true
	# execute if function api:damage/is_invincible run data modify storage api: out.GiveDamage set value false

# ダメージを与える
	execute if data storage api: out{GiveDamage:true} run function api:damage/core/set_damage_info.m with storage api:temp
	execute if data storage api: out{GiveDamage:true} if entity @s[tag=!Player.Guard] run function api:damage/core/deal
	execute if data storage api: out{GiveDamage:true} if entity @s[tag= Player.Guard] if data storage api:temp DamageInfo.Attribute{Unblockable:true} run function api:damage/core/deal
	execute if data storage api: out{GiveDamage:true} if entity @s[tag= Player.Guard] unless data storage api:temp DamageInfo.Attribute{Unblockable:true} run function api:damage/core/blocked

# あとしまつ
	data remove storage api:temp ID
	data remove storage api:temp UUID
	data remove storage api:temp DamageInfo
