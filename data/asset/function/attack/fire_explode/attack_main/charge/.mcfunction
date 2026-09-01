#> asset:attack/fire_explode/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/fire_explode/attack_main/charge/shot

execute if score @s AttackTime matches 18.. run function player_manager:fsm/request {state:"idle"}
