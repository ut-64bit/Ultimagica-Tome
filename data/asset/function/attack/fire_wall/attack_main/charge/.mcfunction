#> asset:attack/fire_wall/attack_main/normal/
#

execute if score @s AttackTime matches 1 positioned ^7.5 ^ ^5 rotated ~90 0 run function asset:attack/fire_wall/attack_main/normal/shot

execute if score @s AttackTime matches 11.. run function player_manager:fsm/request {state:"idle"}
