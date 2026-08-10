#> asset:attack/water_ray/attack_start/
#

attribute @s movement_speed modifier add player:attack -1 add_multiplied_total

execute anchored eyes positioned ^ ^-0.32 ^0.5 run function api:object/summon.m {ID:"atk.water_ray_base"}
