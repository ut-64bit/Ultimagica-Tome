#> api:attack/set
#
# 攻撃を設定する
#
# @input
#	storage api: in.ID
#		: string
#
# @api

# validate
	execute unless data storage api: in.ID run return fail
	execute unless entity @s[type=player,tag=_this] run return fail

# 設定する
	function api:attack/core/set
