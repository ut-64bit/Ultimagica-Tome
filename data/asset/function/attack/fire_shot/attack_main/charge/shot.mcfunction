#> asset:attack/fire_shot/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^ ^-0.2 ^0.5 run function api:object/summon.m {ID:"atk.fire_shot_charge_base"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.0

# MP消費
	data modify storage api: in.Amount set value 3
	function api:stamina/consume
