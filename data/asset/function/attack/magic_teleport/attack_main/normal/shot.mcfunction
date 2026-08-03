#> asset:attack/magic_teleport/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^ ^ ^ run function api:object/summon.m {ID:"proj.magic_teleport"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.3
	particle reverse_portal ~ ~1 ~ 0.0 0.0 0.0 1 20 normal
