#> asset:object/proj.thunder_spire/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 爆発する
	function api:clear_in
	function api:object/summon.m {ID:"proj.thunder_spire_explosion"}
	execute positioned ~ ~ ~0.01 run function api:object/summon.m {ID:"particle.thunder_spire_spark"}

# 演出
	playsound t_magic:electric_shock neutral @a ~ ~ ~ 1.3 1.3
	playsound entity.allay.death neutral @a ~ ~ ~ 1.3 1
	playsound entity.generic.explode neutral @a ~ ~ ~ 1.3 2
