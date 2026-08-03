#> asset:attack/wind_arrow/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/wind_arrow/attack_main/normal/shot

execute if score @s AttackTime matches 20.. run function player_manager:fsm/request {state:"idle"}
