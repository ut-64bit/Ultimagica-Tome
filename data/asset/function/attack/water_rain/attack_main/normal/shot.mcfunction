#> asset:attack/water_rain/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.water_rain"}

# 演出
	playsound block.conduit.activate player @a ~ ~ ~ 1 1
