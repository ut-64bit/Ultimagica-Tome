#> api:attack/require_stamina
#
# 攻撃に必要なスタミナを消費する
#
# @input
#	storage api: in.ID
#		: string
#
# @output
#	storage api: out.CheckStamina
#		: bool
#
# @api

# validate
	execute unless data storage api: in.ID run return fail
	execute unless entity @s[type=player,tag=_this] run return fail

# リセット
	data remove storage api: out.CheckStamina

# 確認する
	function api:attack/core/require_stamina

# 出力
	return run data get storage api: out.CheckStamina
