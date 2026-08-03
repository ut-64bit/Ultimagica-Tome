#> asset:object/proj.water_rain/destroy/
#
# 死んだときに呼び出されるメソッド
#

# ある程度高い場所に雲を出す
	function asset:object/proj.water_rain/destroy/ray
	execute if score #t_Height _ matches 7.. run function asset:object/proj.water_rain/destroy/deploy
	execute unless score #t_Height _ matches 7.. run function asset:object/proj.water_rain/destroy/up
	scoreboard players reset #t_Height _
