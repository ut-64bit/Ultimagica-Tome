#> asset:object/proj.fire_explode/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 演出
	particle explosion ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 0 0 0 1 100 force
	playsound entity.generic.explode player @a ~ ~ ~ 1 2
