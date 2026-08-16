#> asset:object/proj.gravity_flying_debris/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 演出
	particle block{block_state:{Name:"pointed_dripstone"}} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
	playsound block.stone.break player @a ~ ~ ~ 0.5 1
	playsound block.deepslate.break player @a ~ ~ ~ 0.5 1
	playsound block.tuff.break player @a ~ ~ ~ 0.5 0
