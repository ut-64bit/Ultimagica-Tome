#> asset:object/beam.holy_beam/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.beam"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "beam.holy_beam"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 40
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.5
	# 発射者
	# data modify storage asset:object Field.OwnerID set value
