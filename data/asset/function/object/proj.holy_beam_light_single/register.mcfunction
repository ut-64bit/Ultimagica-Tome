#> asset:object/proj.holy_beam_light_single/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "interface.attackable"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "proj.holy_beam_light_single"
# フィールド
	data modify storage asset:object Field.Duration set value 15
	# Delay
	data modify storage asset:object Field.Delay set value 20
