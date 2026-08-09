#> asset:attack/crystal_bullet/attack_start/
#

execute if score @s ChargePhase matches 2 run attribute @s movement_speed modifier add player:attack -0.3 add_multiplied_base
