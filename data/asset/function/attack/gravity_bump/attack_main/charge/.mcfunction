#> asset:attack/gravity_bump/attack_main/charge/
#

execute if score @s AttackTime matches 1 positioned ^0.0 ^ ^0.5 run function asset:attack/gravity_bump/attack_main/charge/shot

execute if score @s AttackTime matches 8.. run function player_manager:fsm/request {state:"idle"}
