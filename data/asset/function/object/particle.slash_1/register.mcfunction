#> asset:object/particle.slash_1/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.item_particle"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "particle.slash_1"
# フィールド
	# フレーム数
	data modify storage asset:object Field.Frame set value 4
	# パーティクルのアイテムモデル
	data modify storage asset:object Field.item_model set value "particle:slash_1"
	# billboard
	data modify storage asset:object Field.billboard set value "fixed"
	# scale
	data modify storage asset:object Field.scale set value 3
