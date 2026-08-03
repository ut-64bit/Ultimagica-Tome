#> asset:attack/thunder_spark/attack_main/repeat
#

# MP消費
	data modify storage api: in.Amount set value 6
	execute unless function api:stamina/check run return fail

# 繰り返す
	scoreboard players set @s AttackTime 0
