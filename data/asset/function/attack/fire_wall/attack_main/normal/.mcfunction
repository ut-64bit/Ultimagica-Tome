#> asset:attack/fire_wall/attack_main/normal/
#

execute if score @s AttackTime matches 1 positioned ^0.0 ^ ^0.5 run function asset:attack/fire_wall/attack_main/normal/shot

execute if score @s AttackTime matches 8.. run function player_manager:fsm/request {state:"idle"}
