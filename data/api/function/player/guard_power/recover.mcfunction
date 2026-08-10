#> api:player/guard_power/recover
#
# ガード力を回復する
#
# @input
#	storage api: in.Amount
#	: float
#
# @api

# validate
	execute unless entity @s[type=player] run return fail
	execute unless data storage api: in.Amount run return fail

# 回復量を計算する
	execute store result score #t_Amount _ run data get storage api: in.Amount 1000

# 最大値を越えないようにしつつ回復する
	scoreboard players operation @s GuardPower += #t_Amount _
	scoreboard players operation @s GuardPower < @s MaxGuardPower

# あとしまつ
	scoreboard players reset #t_Amount _
