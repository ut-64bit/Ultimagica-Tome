#> asset:attack/gravity_bump/attack_start/
#

execute if score @s ChargePhase matches 2 run attribute @s movement_speed modifier add player:attack -1 add_multiplied_base
