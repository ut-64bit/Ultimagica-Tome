#> asset:attack/crystal_shield/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^ ^ ^2.5 run function api:object/summon.m {ID:"atk.crystal_shield_place"}

# 演出
	playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 1.8
	# function api:object/summon.m {ID:"particle.magic_crystal"}

# MP消費
	data modify storage api: in.Amount set value 18
	function api:player/stamina/consume
