#> api:damage/give_damage
#
# ダメージを与える
#
# @input
#	storage api: in.AttackData
#		: AttackData
#
# @output
#	storage api: out.GiveDamage
#
# @api

# validate
	execute unless data storage api: in.AttackData run return fail
	execute unless entity @s run return fail

# ダメージを与える
	function api:damage/core/give_damage

# 出力
	return run data get storage api: out.GiveDamage
