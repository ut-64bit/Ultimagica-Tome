#> asset:object/proj.magic_turret/register
#
# クラスの登録処理
#

# 継承
	data modify storage asset:object Extends append value "interface.attackable"
	function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "proj.magic_turret"
# フィールド
	data modify storage asset:object Field.Duration set value 100
