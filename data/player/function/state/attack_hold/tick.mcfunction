execute unless data storage player:context this.StateMachine.transition.target if entity @s[tag=!UsingItem] run function player_manager:fsm/request_keep {state:"attack_main"}

# ホールドを進める
	scoreboard players add @s HoldTime 1

# hold_mainを呼ぶ
	function player:state/attack_hold/call_main with storage player:context this.StateMachine.state_data
