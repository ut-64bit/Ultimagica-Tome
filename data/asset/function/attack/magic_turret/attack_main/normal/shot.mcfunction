#> asset:attack/magic_turret/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.magic_turret_ray"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.3
