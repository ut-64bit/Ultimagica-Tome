#> asset:object/proj.crystal_bullet/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 演出
	particle instant_effect{color:16730367} ~ ~ ~ 0 0 0 0.1 3 force
	particle firework ~ ~ ~ 0 0 0 0.1 3 force
	particle block{block_state:{Name:"blue_ice"}} ~ ~ ~ 0.1 0.1 0.1 0.1 5 normal
	playsound block.glass.break player @a ~ ~ ~ 1 1
