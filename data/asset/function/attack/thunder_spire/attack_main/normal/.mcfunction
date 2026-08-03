#> asset:attack/thunder_spire/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/thunder_spire/attack_main/normal/shot

execute if score @s AttackTime matches 14.. run function player_manager:fsm/request {state:"idle"}
