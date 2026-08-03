#> asset:object/particle.thunder_spire_spark/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "abstract.text_particle"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "particle.thunder_spire_spark"
# フィールド
	# フレーム数
	data modify storage asset:object Field.Frame set value 14
	# パーティクルのフォント
	data modify storage asset:object Field.font set value "particle:spark"
	# billboard
	data modify storage asset:object Field.billboard set value "fixed"
	# scale
	data modify storage asset:object Field.scale set value 3
