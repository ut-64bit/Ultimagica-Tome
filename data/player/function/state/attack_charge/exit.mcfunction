# 移動速度を戻す
	attribute @s movement_speed modifier remove player:charge

# charge_endを呼ぶ
	function player:state/attack_charge/call_end with storage player:context this.StateMachine.state_data
