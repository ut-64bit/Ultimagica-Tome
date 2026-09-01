#> asset:object/proj.water_rain_cloud/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "interface.attackable"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "proj.water_rain_cloud"
# フィールド
	# 持続
	data modify storage asset:object Field.Duration set value 140
