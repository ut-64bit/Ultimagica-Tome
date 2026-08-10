#> api:player/attack/set.m
#
# 攻撃を設定する
#
# @input
#	macro ID : string
#
# @api

# validate
	execute unless entity @s[type=player] run return fail

# ID
	$data modify storage api: in.ID set value "$(ID)"

# 設定する
	return run function api:player/attack/set
