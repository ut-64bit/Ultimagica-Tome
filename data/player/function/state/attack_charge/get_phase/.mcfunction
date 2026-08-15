#> player:state/attack_charge/get_phase/
#

# リセット
	scoreboard players set @s ChargePhase 0
	scoreboard players set $MaxPhase _ 0
	scoreboard players operation #t_ChargeTime _ = @s ChargeTime
	# CastSpeedは1000で等速。詠唱段階の判定に使用する経過時間を倍率化する。
	scoreboard players operation #t_ChargeTime _ *= @s CastSpeed
	scoreboard players operation #t_ChargeTime _ /= #c_1000 const
	execute if score @s CastSpeed matches ..0 run scoreboard players set #t_ChargeTime _ 0

# 取得する
	data modify storage player:temp ChargeTime set from storage player:context this.StateMachine.state_data.ChargeTime
	execute if data storage player:temp ChargeTime[0] run function player:state/attack_charge/get_phase/foreach
	data remove storage player:temp ChargeTime

# あとしまつ
	scoreboard players reset #t_ChargeTime _
	scoreboard players reset #t_BaseChargeTime _
