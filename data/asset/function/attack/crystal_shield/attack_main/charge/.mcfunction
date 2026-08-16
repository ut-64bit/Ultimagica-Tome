#> asset:attack/crystal_shield/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/crystal_shield/attack_main/charge/shot

execute if score @s AttackTime matches 5.. run function player_manager:fsm/request {state:"idle"}
