#
	scoreboard players remove @s StunTime 1
	execute unless score @s StunTime matches 1.. run function player_manager:fsm/request {state:"idle"}

# 演出
	particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 2 force
