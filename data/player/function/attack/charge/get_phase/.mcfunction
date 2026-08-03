#> player:attack/charge/get_phase/
#

# リセット
	scoreboard players set @s ChargePhase 0
	scoreboard players set $MaxPhase _ 0
	scoreboard players operation #t_ChargeTime _ = @s ChargeTime

# 取得する
	data modify storage asset:temp ChargeTime set from storage asset:context ChargeTime
	execute if data storage asset:temp ChargeTime[0] run function player:attack/charge/get_phase/foreach
	data remove storage asset:temp ChargeTime

# あとしまつ
	scoreboard players reset #t_ChargeTime _
	scoreboard players reset #t_BaseChargeTime _
