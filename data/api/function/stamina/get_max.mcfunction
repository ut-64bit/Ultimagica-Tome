#> api:stamina/get_max
#
# 最大スタミナの整数部分を取得する
#
# @output
#	score $MaxStamina _
#
# @api

# リセット
	scoreboard players reset $MaxStamina _

# 取得する
	scoreboard players operation $MaxStamina _ = @s MaxStamina
	scoreboard players operation $MaxStamina _ /= #c_1000 const

# 出力
	return run scoreboard players get $MaxStamina _
