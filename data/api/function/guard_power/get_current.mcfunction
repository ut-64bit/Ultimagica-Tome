#> api:guard_power/get_current
#
# スタミナの整数部分を取得する
#
# @output
#	score $GuardPower _
#
# @api

# リセット
	scoreboard players reset $GuardPower _

# 取得する
	scoreboard players operation $GuardPower _ = @s GuardPower
	scoreboard players operation $GuardPower _ /= #c_1000 const

# 出力
	return run scoreboard players get $GuardPower _
