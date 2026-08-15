#> asset:attack/gravity_bump/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/gravity_bump/attack_main/normal/shot

execute if score @s AttackTime matches 12.. run function player_manager:fsm/request {state:"idle"}
