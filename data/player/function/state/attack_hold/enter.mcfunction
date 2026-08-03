# タイマーを初期化
scoreboard players set @s HoldTime 0

# ホールド中は回避を許可する
	function player_manager:action_block/remove {id:"attack_phase",action:"dodge"}
	function player_manager:action_block/remove {id:"attack",action:"dodge"}

# hold_startを呼ぶ
	function player:state/attack_hold/call_start with storage player:context this.StateMachine.state_data
