#> asset:attack/crystal_bullet/attack_main/normal/
#

execute if score @s AttackTime matches 1 anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ positioned ^-0.3 ^ ^1 run function asset:attack/crystal_bullet/attack_main/shot

execute if score @s AttackTime matches 8.. run function player_manager:fsm/request {state:"idle"}
