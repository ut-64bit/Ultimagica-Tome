#> asset:attack/holy_spire_wave/attack_main/normal/
#

execute if score @s AttackTime matches 1 positioned ^0.0 ^ ^0.5 run function asset:attack/holy_spire_wave/attack_main/normal/shot

execute if score @s AttackTime matches 20.. run function player_manager:fsm/request {state:"idle"}
