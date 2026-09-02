#> asset:attack/holy_spire/attack_main/
#

execute if score @s AttackTime matches 4 run function asset:attack/holy_spire/attack_main/shot

execute if score @s AttackTime matches 15.. run function player_manager:fsm/request {state:"idle"}
