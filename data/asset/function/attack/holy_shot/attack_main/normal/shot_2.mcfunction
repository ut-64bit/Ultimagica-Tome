#> asset:attack/holy_shot/attack_main/normal/shot_2
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^0.35 ^0.2 ^0.1 run function api:object/summon.m {ID:"proj.holy_shot"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 0.9 1.3
	playsound entity.player.attack.sweep player @a ~ ~ ~ 0.9 1.3
