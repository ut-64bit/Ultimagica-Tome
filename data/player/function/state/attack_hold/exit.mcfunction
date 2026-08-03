# 移動速度を戻す
	attribute @s movement_speed modifier remove player:hold

# hold_endを呼ぶ
	function player:state/attack_hold/call_end with storage player:context this.StateMachine.state_data

# 攻撃を終了する場合は行動制限を解除する
	function player_manager:attack/unblock_if_finished
