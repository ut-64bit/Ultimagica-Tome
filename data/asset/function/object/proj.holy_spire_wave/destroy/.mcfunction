#> asset:object/proj.holy_spire_wave/destroy/
#
# 破棄する直前に呼ばれる処理
#

# 演出
	particle firework ~ ~0 ~ 0 0 0 0.05 1 normal
	particle firework ~ ~1 ~ 0 0 0 0.05 1 normal
	particle firework ~ ~2 ~ 0 0 0 0.05 1 normal
	particle firework ~ ~3 ~ 0 0 0 0.05 1 normal
	playsound block.glass.break player @a ~ ~ ~ 1 1
