# タイマーを初期化
	scoreboard players set @s HoldTime 0

# hold_startを呼ぶ
	function player:state/attack_hold/call_start with storage player:context this.StateMachine.state_data
