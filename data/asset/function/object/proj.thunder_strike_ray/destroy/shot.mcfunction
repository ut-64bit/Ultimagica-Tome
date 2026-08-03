#> asset:object/proj.thunder_strike_ray/destroy/shot
#

# 爆発する
	function api:clear_in
	function api:object/summon.m {ID:"proj.thunder_strike"}
	execute positioned ~ ~ ~0.01 run function api:object/summon.m {ID:"particle.thunder_spire_spark"}

# 演出
	particle flash{color:-1} ~ ~0.1 ~ 0.0 0.0 0.0 0 1 force
	playsound t_magic:electric_shock neutral @a ~ ~ ~ 1 1
	playsound entity.generic.explode neutral @a ~ ~ ~ 1 2
