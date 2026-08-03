#> player:attack/attack/main
#

# 攻撃開始時の処理
	execute unless data storage asset:context {OldState:"attack"} run function player:attack/call_attack_start/

scoreboard players add @s AttackTime 1

# 攻撃中の処理
	function player:attack/call_attack_main/
