#> asset:attack/crystal_shield/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/crystal_shield/attack_main/normal/shot

execute if score @s AttackTime matches 5.. run function player_manager:fsm/request {state:"idle"}
