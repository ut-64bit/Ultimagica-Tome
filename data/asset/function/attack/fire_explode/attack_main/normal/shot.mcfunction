#> asset:attack/gravity_bump/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^ ^ ^ run function api:object/summon.m {ID:"proj.fire_pillar_ray"}
