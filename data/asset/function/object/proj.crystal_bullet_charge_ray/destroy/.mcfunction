#> asset:object/proj.crystal_bullet_charge_ray/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 発射する
	function api:clear_in
	execute facing ^ ^ ^-1 run function api:object/summon.m {ID:"proj.crystal_bullet"}

# 演出
	playsound entity.evoker.prepare_summon neutral @a ~ ~ ~ 2 1.8
