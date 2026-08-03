#> api:guard_power/get_max
#
# 最大スタミナの整数部分を取得する
#
# @output
#	score $MaxGuardPower _
#
# @api

# リセット
	scoreboard players reset $MaxGuardPower _

# 取得する
	scoreboard players operation $MaxGuardPower _ = @s MaxGuardPower
	scoreboard players operation $MaxGuardPower _ /= #c_1000 const

# 出力
	return run scoreboard players get $MaxGuardPower _
