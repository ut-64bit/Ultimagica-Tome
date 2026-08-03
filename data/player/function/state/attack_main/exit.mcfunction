# 移動速度を戻す
	attribute @s movement_speed modifier remove player:attack

# 攻撃中の回避制限を解除する
	function player_manager:action_block/remove {id:"attack_phase",action:"dodge"}

# 正常終了またはキャンセルのコールバックを呼ぶ
	execute if function player_manager:attack/is_canceled_transition run function player:state/attack/call_cancel with storage player:context this.StateMachine.state_data
	execute unless function player_manager:attack/is_canceled_transition run function player:state/attack_main/call_end with storage player:context this.StateMachine.state_data

# 攻撃を終了する場合は行動制限を解除する
	function player_manager:attack/unblock_if_finished
