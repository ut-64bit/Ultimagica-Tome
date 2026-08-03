#> asset:attack/magic_turret/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/magic_turret/attack_main/charge/shot

execute if score @s AttackTime matches 9.. run function player_manager:fsm/request {state:"idle"}
