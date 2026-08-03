#> asset:attack/wind_jump/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/wind_jump/attack_main/normal/jump

execute if score @s AttackTime matches 1.. run function player_manager:fsm/request {state:"idle"}
