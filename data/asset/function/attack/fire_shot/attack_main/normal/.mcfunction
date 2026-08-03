#> asset:attack/fire_shot/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/fire_shot/attack_main/normal/shot

# 終了
	execute if score @s AttackTime matches 11.. run function player_manager:fsm/request {state:"idle"}
