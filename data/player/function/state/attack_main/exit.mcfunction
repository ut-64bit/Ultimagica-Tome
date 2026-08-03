# 移動速度を戻す
	attribute @s movement_speed modifier remove player:attack

# attack_endを呼ぶ
	function player:state/attack_main/call_end with storage player:context this.StateMachine.state_data
