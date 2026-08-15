#> asset:object/particle.shock_wave_1/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.item_particle"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "particle.shock_wave_1"
# フィールド
	# フレーム数
	data modify storage asset:object Field.Frame set value 6
	# パーティクルのアイテムモデル
	data modify storage asset:object Field.item_model set value "particle:shock_wave_1"
	# billboard
	data modify storage asset:object Field.billboard set value "fixed"
	# scale
	data modify storage asset:object Field.scale set value 0.8
