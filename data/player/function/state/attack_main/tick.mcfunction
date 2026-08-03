# 攻撃を進める
	scoreboard players add @s AttackTime 1

# attack_mainを呼ぶ
	function player:state/attack_main/call_main with storage player:context this.StateMachine.state_data
