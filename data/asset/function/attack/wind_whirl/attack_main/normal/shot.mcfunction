#> asset:attack/wind_whirl/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^1 run function api:object/summon.m {ID:"proj.wind_whirl"}

# 演出
	playsound entity.breeze.hurt player @a ~ ~ ~ 1 0.7
	playsound entity.breeze.idle_air player @a ~ ~ ~ 1 0.5
