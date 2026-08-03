#> asset:attack/magic_beam/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"beam.magic_beam"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.3
