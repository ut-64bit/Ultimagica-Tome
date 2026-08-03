#> asset:attack/water_bullet/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/water_bullet/attack_main/normal/shot

execute if score @s AttackTime matches 13.. run function player_manager:fsm/request {state:"idle"}
