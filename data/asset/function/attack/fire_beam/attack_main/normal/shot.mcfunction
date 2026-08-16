#> asset:attack/fire_beam/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^ ^ ^2 run function api:object/summon.m {ID:"proj.fire_beam_base"}
