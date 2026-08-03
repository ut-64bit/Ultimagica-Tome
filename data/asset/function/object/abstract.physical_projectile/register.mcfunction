#> asset:object/abstract.physical_projectile/register
#
# クラスの登録処理
#

# 継承
	# data modify storage asset:object Extends append value "abstract.physical_projectile"
	# function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value true
# ID
	data modify storage asset:object ID set value "abstract.physical_projectile"
# フィールド
	# 飛距離
	data modify storage asset:object Field.Range set value 40
	# 初速
	data modify storage asset:object Field.Speed set value 1.0
	# 1ステップあたりの移動距離
	data modify storage asset:object Field.MovePerStep set value 0.25
	# 発射者
	# data modify storage asset:object Field.OwnerID set value

# スコアボード宣言
	scoreboard objectives add OwnerID dummy
	scoreboard objectives add MoveCount dummy
