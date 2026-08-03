#> asset:object/proj.magic_turret/tick/shot
#

# 発射する
	function api:clear_in
	execute as @n[tag=_owner,distance=..1000] run function api:object/summon.m {ID:"proj.magic_turret_shot"}

# 演出
	playsound item.firecharge.use neutral @a ~ ~ ~ 1.5 1.3
