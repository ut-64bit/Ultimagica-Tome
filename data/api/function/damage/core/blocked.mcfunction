#> api:damage/core/blocked
#

# ステータス・スキル倍率を適用していない基礎ダメージでGPを減らす。
	data modify storage api: in.Amount set from storage api:temp DamageInfo.Damage
	function api:player/guard_power/consume

# 演出
	playsound item.shield.block player @a[tag=!_owner] ~ ~ ~ 1 1
	execute at @p[tag=_owner,distance=..1000] facing entity @s feet positioned ^ ^ ^3 run playsound item.shield.block player @p[tag=_owner,distance=..1000] ~ ~ ~ 1 1 1
