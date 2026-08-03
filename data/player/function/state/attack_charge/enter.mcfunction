# タイマーを初期化
	scoreboard players set @s ChargeTime 0
scoreboard players set @s ChargePhase 0

# チャージ中は回避できない
	function player_manager:action_block/add {id:"attack_phase",action:"dodge"}

# charge_startを呼ぶ
	function player:state/attack_charge/call_start with storage player:context this.StateMachine.state_data
