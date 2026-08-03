#> lib:bounding_box/core/small.m
#

$execute positioned ~-$(Shift1) ~-$(Shift1) ~-$(Shift1) as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,dx=0] positioned ~$(Shift2) ~$(Shift2) ~$(Shift2) if entity @s[dx=0] run tag @s add bounding_box
