#> asset:object/abstract.projectile/register
#
# クラスの登録処理
#

# 継承
	# data modify storage asset:object Extends append value
	# function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value true
# ID
	data modify storage asset:object ID set value "abstract.projectile"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 1
	# 移動速度
	data modify storage asset:object Field.Speed set value 1
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
	# 発射者
	# data modify storage asset:object Field.OwnerID set value
	# ターゲット
	# data modify storage asset:object Field.TargetID set value

# スコアボード宣言
	scoreboard objectives add MoveCount dummy
	scoreboard objectives add OwnerID dummy
	scoreboard objectives add TargetID dummy
