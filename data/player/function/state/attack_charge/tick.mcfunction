# チャージを進める
	scoreboard players add @s ChargeTime 1

# ChargePhaseを計算する
	function player:state/attack_charge/get_phase/

# 発射する
	execute if score @s ChargePhase matches 1.. if entity @s[tag=!UsingItem] run function player_manager:fsm/request_keep {state:"attack_main"}
	execute if score @s ChargePhase matches 1.. unless data storage player:context this.StateMachine.state_data{IsHoldable:true} if score @s ChargePhase = $MaxPhase _ run function player_manager:fsm/request_keep {state:"attack_main"}
	execute if score @s ChargePhase matches 1.. if data storage player:context this.StateMachine.state_data{IsHoldable:true} if score @s ChargePhase = $MaxPhase _ if entity @s[tag=UsingItem] run function player_manager:fsm/request_keep {state:"attack_hold"}

scoreboard players reset $MaxPhase _

# charge_mainを呼ぶ
	function player:state/attack_charge/call_main with storage player:context this.StateMachine.state_data
