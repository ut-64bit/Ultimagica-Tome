#> api:player/stamina/get_current
#
# スタミナの整数部分を取得する
#
# @output
#	score $Stamina _
#
# @api

execute unless entity @s[type=player] run return fail

# リセット
	scoreboard players reset $Stamina _

# 取得する
	scoreboard players operation $Stamina _ = @s Stamina
	scoreboard players operation $Stamina _ /= #c_1000 const

# 出力
	return run scoreboard players get $Stamina _
