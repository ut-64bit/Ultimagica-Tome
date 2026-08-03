#> player:state/attack_charge/get_phase/
#

# リセット
	scoreboard players set @s ChargePhase 0
	scoreboard players set $MaxPhase _ 0
	scoreboard players operation #t_ChargeTime _ = @s ChargeTime

# 取得する
	data modify storage player:temp ChargeTime set from storage player:context this.StateMachine.state_data.ChargeTime
	execute if data storage player:temp ChargeTime[0] run function player:state/attack_charge/get_phase/foreach
	data remove storage player:temp ChargeTime

# あとしまつ
	scoreboard players reset #t_ChargeTime _
	scoreboard players reset #t_BaseChargeTime _
