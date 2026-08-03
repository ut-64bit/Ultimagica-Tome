#> asset:object/proj.magic_turret_ray/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.projectile"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "proj.magic_turret_ray"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 30
	# 移動速度
	data modify storage asset:object Field.Speed set value 6
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
