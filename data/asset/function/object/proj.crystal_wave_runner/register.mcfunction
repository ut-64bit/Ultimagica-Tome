#> asset:object/proj.crystal_wave_runner/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.ground_wave_runner"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "proj.crystal_wave_runner"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 80
	# 移動速度
	data modify storage asset:object Field.Speed set value 6
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
	# 攻撃を設置する間隔
	data modify storage asset:object Field.PlaceInterval set value 7
	# 追従できる上下距離（ブロック単位、0.25刻み）
	data modify storage asset:object Field.MaxRiseDistance set value 3
	data modify storage asset:object Field.MaxDropDistance set value 3
