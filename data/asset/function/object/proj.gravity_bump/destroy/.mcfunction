#> asset:object/proj.gravity_bump/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 演出
	particle block{block_state:{Name:"pointed_dripstone"}} ~ ~1 ~ 0.25 1 0.25 0 100 normal
	playsound block.stone.break player @a ~ ~ ~ 1 1
	playsound block.deepslate.break player @a ~ ~ ~ 1 1
	playsound block.tuff.break player @a ~ ~ ~ 1 0
