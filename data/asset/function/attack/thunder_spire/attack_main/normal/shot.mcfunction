#> asset:attack/thunder_spire/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.thunder_spire"}

# 演出
	playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
	playsound item.trident.throw player @a ~ ~ ~ 1 1
