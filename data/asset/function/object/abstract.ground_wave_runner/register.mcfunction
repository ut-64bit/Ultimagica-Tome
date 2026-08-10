#> asset:object/abstract.ground_wave_runner/register
#
# 地面に沿って直進する弾丸の基底クラス
#

# 継承
	data modify storage asset:object Extends append value "abstract.projectile"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value true
# ID
	data modify storage asset:object ID set value "abstract.ground_wave_runner"
# フィールド
	# 移動回数
	data modify storage asset:object Field.Range set value 1
	# 1tickあたりの移動回数
	data modify storage asset:object Field.Speed set value 1
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
	# 攻撃を設置する間隔
	data modify storage asset:object Field.PlaceInterval set value 1
