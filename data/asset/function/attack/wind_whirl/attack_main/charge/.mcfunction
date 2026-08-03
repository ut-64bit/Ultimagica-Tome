#> asset:attack/wind_whirl/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/wind_whirl/attack_main/charge/shot

execute if score @s AttackTime matches 21.. run function player_manager:fsm/request {state:"idle"}
