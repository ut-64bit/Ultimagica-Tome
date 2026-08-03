# タイマーを初期化
scoreboard players set @s AttackTime 0

# 攻撃中は回避できない
	function player_manager:action_block/add {id:"attack_phase",action:"dodge"}

# attack_startを呼ぶ
	function player:state/attack_main/call_start with storage player:context this.StateMachine.state_data
