#> asset:object/proj.holy_spire/destroy/
#
# 死んだときに呼び出されるメソッド
#

# 演出
	particle firework ^ ^ ^ 0.0 0.0 0.0 0.05 2 normal
	particle firework ^ ^ ^-1 0.0 0.0 0.0 0.05 2 normal
	particle firework ^ ^ ^-2 0.0 0.0 0.0 0.05 2 normal
	particle firework ^ ^ ^-3 0.0 0.0 0.0 0.05 2 normal
	playsound block.glass.break player @a ~ ~ ~ 1 1
