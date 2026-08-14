#> asset:object/proj.fire_wall/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 演出
	particle large_smoke ~ ~2.5 ~ 0.15 1 0.15 0.05 10 normal
	particle cloud ~ ~ ~ 1 0 1 0.025 10 normal
	playsound block.fire.extinguish player @a ~ ~ ~ 0.5 1
