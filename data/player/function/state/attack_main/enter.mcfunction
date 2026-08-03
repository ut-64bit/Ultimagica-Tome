# タイマーを初期化
	scoreboard players set @s AttackTime 0

# attack_startを呼ぶ
	function player:state/attack_main/call_start with storage player:context this.StateMachine.state_data
