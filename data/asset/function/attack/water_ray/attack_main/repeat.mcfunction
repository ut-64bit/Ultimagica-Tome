#> asset:attack/water_ray/attack_main/repeat
#

# MP消費
	data modify storage api: in.Amount set value 6
	execute unless function api:stamina/check run return fail
	function api:stamina/consume

# 繰り返す
	scoreboard players set @s AttackTime 0
