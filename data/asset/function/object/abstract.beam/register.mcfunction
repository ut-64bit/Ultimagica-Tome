#> asset:object/abstract.beam/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.projectile"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value true
# ID
	data modify storage asset:object ID set value "abstract.beam"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 40
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
	# 発射者
	# data modify storage asset:object Field.OwnerID set value
