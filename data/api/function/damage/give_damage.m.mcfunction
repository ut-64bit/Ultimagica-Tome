#> api:damage/give_damage.m
#
# ダメージを与える
#
# @input
#	macro AttackData
#
# @output
#	storage api: out.GiveDamage
#
# @api

# validate
	execute unless entity @s run return fail

# AttackData
	$data modify storage api: in.AttackData set value $(AttackData)

# ダメージを与える
	function api:damage/core/give_damage

# 引数のリセット
	# data remove storage api: in.AttackData

# 出力
	return run data get storage api: out.GiveDamage
