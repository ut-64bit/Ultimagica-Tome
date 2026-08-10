#> api:player/guard_power/get_max
#
# 最大ガード力の整数部分を取得する
#
# @output
#	score $MaxGuardPower _
#
# @api

execute unless entity @s[type=player] run return fail

# リセット
	scoreboard players reset $MaxGuardPower _

# 取得する
	scoreboard players operation $MaxGuardPower _ = @s MaxGuardPower
	scoreboard players operation $MaxGuardPower _ /= #c_1000 const

# 出力
	return run scoreboard players get $MaxGuardPower _
