#> asset:object/particle.magic_bullet_shock_wave/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.item_particle"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "particle.magic_bullet_shock_wave"
# フィールド
	# フレーム数
	data modify storage asset:object Field.Frame set value 6
	# パーティクルのアイテムモデル
	data modify storage asset:object Field.item_model set value "particle:shock_wave_3"
	# billboard
	data modify storage asset:object Field.billboard set value "fixed"
	# scale
	data modify storage asset:object Field.scale set value 0.8
