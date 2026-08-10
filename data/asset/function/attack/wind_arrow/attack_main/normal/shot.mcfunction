#> asset:attack/wind_arrow/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.wind_arrow"}

# MP消費
	data modify storage api: in.Amount set value 8
	function api:player/stamina/consume

# 演出
	playsound ut_magic:arrow_release player @a ~ ~ ~ 0.9 0.9
