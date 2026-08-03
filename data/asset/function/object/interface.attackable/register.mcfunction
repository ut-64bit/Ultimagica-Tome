#> asset:object/interface.attackable/register
#
# クラスの登録処理
#

# 継承
	# data modify storage asset:object Extends append value
	# function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value true
# ID
	data modify storage asset:object ID set value "interface.attackable"
# フィールド
	# 所有者
	# data modify storage asset:object Field.OwnerID set value
	# ターゲット
	# data modify storage asset:object Field.TargetID set value

# スコアボード宣言
	scoreboard objectives add OwnerID dummy
	scoreboard objectives add TargetID dummy
