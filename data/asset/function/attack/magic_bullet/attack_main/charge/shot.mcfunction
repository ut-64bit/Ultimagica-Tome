#> asset:attack/magic_bullet/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.magic_bullet_charged"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.4
	playsound item.trident.return player @a ~ ~ ~ 1 1.5
