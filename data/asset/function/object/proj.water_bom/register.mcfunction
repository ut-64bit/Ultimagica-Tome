#> asset:object/proj.water_bom/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.physical_projectile"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "proj.water_bom"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 200
	# 移動速度
	data modify storage asset:object Field.Speed set value 2
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
