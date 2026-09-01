#> asset:attack/fire_explode/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/fire_explode/attack_main/normal/shot

execute if score @s AttackTime matches 8.. run function player_manager:fsm/request {state:"idle"}
