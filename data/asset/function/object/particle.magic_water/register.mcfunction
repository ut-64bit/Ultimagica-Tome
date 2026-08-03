#> asset:object/particle.magic_water/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "particle.magic_star"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "particle.magic_water"
# フィールド
	# data modify storage asset:object Field.Value set value
