#> asset:attack/crystal_bullet/attack_main/charge/
#

execute if score @s AttackTime matches 1 anchored eyes positioned ^ ^ ^ run function asset:attack/crystal_bullet/attack_main/charge/shot

execute if score @s AttackTime matches 4.. run function player_manager:fsm/request {state:"idle"}
