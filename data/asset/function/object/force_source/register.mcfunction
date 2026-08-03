#> asset:object/force_source/register
#
# クラスの登録処理
#

# 継承
	# data modify storage asset:object Extends append value
	# function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "force_source"
# フィールド
	# 対象
	# data modify storage asset:object Field.OwnerID set value
	# パワー！！！
	data modify storage asset:object Field.Power set value 0.5
	# 力を与える時間
	data modify storage asset:object Field.Duration set value 3

# スコアボード宣言
	scoreboard objectives add OwnerID dummy
