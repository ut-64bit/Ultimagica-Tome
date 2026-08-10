#> api:player/guard_power/get_current
#
# ガード力の整数部分を取得する
#
# @output
#	score $GuardPower _
#
# @api

execute unless entity @s[type=player] run return fail

# リセット
	scoreboard players reset $GuardPower _

# 取得する
	scoreboard players operation $GuardPower _ = @s GuardPower
	scoreboard players operation $GuardPower _ /= #c_1000 const

# 出力
	return run scoreboard players get $GuardPower _
