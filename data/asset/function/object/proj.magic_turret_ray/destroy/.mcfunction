#> asset:object/proj.magic_turret_ray/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 爆発する
	function api:clear_in
	function api:object/summon.m {ID:"proj.magic_turret"}

# 演出
	function api:object/summon.m {ID:"particle.magic_star"}
	playsound entity.evoker.prepare_summon neutral @a ~ ~ ~ 2 1.8
