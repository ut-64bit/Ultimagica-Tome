#> asset:attack/magic_turret/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.Range set value 60
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.magic_turret_ray"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.3
