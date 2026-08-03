#> asset:attack/magic_beam/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/magic_beam/attack_main/normal/shot

execute if score @s AttackTime matches 18.. run function player_manager:fsm/request {state:"idle"}
