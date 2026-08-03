#> asset:attack/wind_whirl/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^3 run function api:object/summon.m {ID:"proj.wind_whirl_charge"}

# 演出
	playsound entity.breeze.hurt player @a ~ ~ ~ 1 0.5
	playsound entity.breeze.idle_air player @a ~ ~ ~ 1 0.5

# MP消費
	data modify storage api: in.Amount set value 4
	function api:stamina/consume
