#> asset:attack/gravity_flying_debris/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes run function api:object/summon.m {ID:"proj.gravity_flying_debris_runner"}

# 演出
	playsound entity.generic.explode player @a ~ ~ ~ 1 1.5
	playsound block.anvil.place player @a ~ ~ ~ 0.25 1.5
