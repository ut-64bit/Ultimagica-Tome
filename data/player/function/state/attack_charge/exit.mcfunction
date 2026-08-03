# 移動速度を戻す
	attribute @s movement_speed modifier remove player:charge

# 正常終了またはキャンセルのコールバックを呼ぶ
	execute if function player_manager:attack/is_canceled_transition run function player:state/attack/call_cancel with storage player:context this.StateMachine.state_data
	execute unless function player_manager:attack/is_canceled_transition run function player:state/attack_charge/call_end with storage player:context this.StateMachine.state_data

# 攻撃を終了する場合は行動制限を解除する
	function player_manager:attack/unblock_if_finished
