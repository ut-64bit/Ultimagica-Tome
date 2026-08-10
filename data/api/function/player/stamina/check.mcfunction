#> api:player/stamina/check
#
# スタミナが閾値を越えているか調べる
#
# @input
#	storage api: in.Amount
#	: float
#
# @output
#	storage api: out.CheckStamina
#	: bool
#
# @api

# validate
	execute unless entity @s[type=player] run return fail
	execute unless data storage api: in.Amount run return fail

# リセット
	data remove storage api: out.CheckStamina

# 取得する
	execute store result score #t_Amount _ run data get storage api: in.Amount 1000
	execute store success storage api: out.CheckStamina byte 1 if score @s Stamina >= #t_Amount _
	execute if entity @s[gamemode=creative] run data modify storage api: out.CheckStamina set value true

# あとしまつ
	scoreboard players reset #t_Amount _

# 出力
	return run data get storage api: out.CheckStamina
