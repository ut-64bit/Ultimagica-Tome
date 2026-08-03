#> player:attack/charge/get_phase/foreach
#

# 数える
	scoreboard players add $MaxPhase _ 1
	execute if score #t_ChargeTime _ matches 1.. store result score #t_BaseChargeTime _ run data get storage asset:temp ChargeTime[0]
	execute if score #t_ChargeTime _ matches 1.. run scoreboard players operation #t_ChargeTime _ -= #t_BaseChargeTime _
	execute if score #t_ChargeTime _ matches 1.. run scoreboard players add @s ChargePhase 1

# 再帰する
	data remove storage asset:temp ChargeTime[0]
	execute if data storage asset:temp ChargeTime[0] if score #t_ChargeTime _ matches 1.. run function player:attack/charge/get_phase/foreach
