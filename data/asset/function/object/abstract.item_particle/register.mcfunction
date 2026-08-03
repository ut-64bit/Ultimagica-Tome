#> asset:object/abstract.item_particle/register
#
# クラスの登録処理
#

# 継承
	# data modify storage asset:object Extends append value
	# function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value true
# ID
	data modify storage asset:object ID set value "abstract.item_particle"
# フィールド
	# フレーム数
	data modify storage asset:object Field.Frame set value 3
	# パーティクルのアイテムモデル
	data modify storage asset:object Field.item_model set value "particle:model"
	# billboard
	data modify storage asset:object Field.billboard set value "fixed"
	# scale
	data modify storage asset:object Field.scale set value 1
