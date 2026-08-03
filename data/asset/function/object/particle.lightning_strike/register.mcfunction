#> asset:object/particle.lightning_strike/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.text_particle"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "particle.lightning_strike"
# フィールド
	# フレーム数
	data modify storage asset:object Field.Frame set value 13
	# パーティクルのフォント
	data modify storage asset:object Field.font set value "particle:lightning_strike"
	# billboard
	data modify storage asset:object Field.billboard set value "vertical"
	# scale
	data modify storage asset:object Field.scale set value 1
