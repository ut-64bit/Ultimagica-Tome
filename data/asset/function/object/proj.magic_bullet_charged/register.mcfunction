#> asset:object/proj.magic_bullet_charged/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.projectile"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "proj.magic_bullet_charged"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 100
	# 移動速度
	data modify storage asset:object Field.Speed set value 16
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
