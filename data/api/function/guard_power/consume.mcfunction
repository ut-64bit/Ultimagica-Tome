#> api:guard_power/recover
#
# スタミナを消費する
#
# @input
#	storage api: in.Amount
#	: float
#
# @api

# validate
	execute unless data storage api: in.Amount run return fail

# 消費量を計算する
	execute store result score #t_Amount _ run data get storage api: in.Amount 1000

# 0以下にならないようにしつつ消費する
	scoreboard players operation @s GuardPower -= #t_Amount _
	scoreboard players operation @s GuardPower > #c_0 const

# 自然回復が再開するのを遅らせる
	scoreboard players set @s GuardPowerRecoverDelay 60

# あとしまつ
	scoreboard players reset #t_Amount _
