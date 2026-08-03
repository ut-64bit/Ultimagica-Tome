#> api:damage/core/give_damage
#

# リセット
	data modify storage api: out.GiveDamage set value false

# マクロに必要なデータを取得する
	data modify storage api:temp ID set from storage api: in.AttackData.ID
	data modify storage api:temp UUID set from entity @s UUID

# 過去に受けた攻撃のDamageInfoを取得する
	function api:damage/core/get_damage_info.m with storage api:temp

# ダメージを与えられるか判定する
	execute unless data storage api:temp DamageInfo{RemainingHitCount:0} run data modify storage api: out.GiveDamage set value true
	execute if function api:damage/is_invincible run data modify storage api: out.GiveDamage set value false

# ダメージを与える
	execute if data storage api: out{GiveDamage:true} run function api:damage/core/set_damage_info.m with storage api:temp
	execute if data storage api: out{GiveDamage:true} if entity @s[tag=!Guard] run function api:damage/core/give_damage.m with storage api:temp DamageInfo
	execute if data storage api: out{GiveDamage:true} if entity @s[tag= Guard] if data storage api:temp DamageInfo.Attribute{Unblockable:true} run function api:damage/core/give_damage.m with storage api:temp DamageInfo
	execute if data storage api: out{GiveDamage:true} if entity @s[tag= Guard] unless data storage api:temp DamageInfo.Attribute{Unblockable:true} run function api:damage/core/blocked

# あとしまつ
	data remove storage api:temp ID
	data remove storage api:temp UUID
	data remove storage api:temp DamageInfo
