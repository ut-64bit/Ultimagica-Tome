#> asset:object/damage_indicator/register
#
# クラスの登録処理
#

# 継承
	# data modify storage asset:object Extends append value
	# function asset:object/_extends/
# 抽象クラスか
	data modify storage asset:object IsAbstract set value false
# ID
	data modify storage asset:object ID set value "damage_indicator"
# フィールド
	# ダメージ (あらかじめstringに変換しておくこと)
	data modify storage asset:object Field.Damage set value "0"
	# 属性
	data modify storage asset:object Field.Element set value "physical"
