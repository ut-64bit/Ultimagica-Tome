#> asset:object/proj.fire_beam_base/tick/shot/shot

# 発射
	function api:clear_in
	function api:object/summon.m {ID:"proj.fire_beam"}

# 演出
	playsound entity.blaze.shoot neutral @a ~ ~ ~ 1.5 1
	playsound entity.blaze.hurt neutral @a ~ ~ ~ 1.5 2
	function api:object/summon.m {ID:"particle.shock_wave_1"}
