#> lib:bounding_box/core/large.m
#

$execute positioned ~-$(Shift1) ~-$(Shift1) ~-$(Shift1) as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=$(Shift2),dy=$(Shift2),dz=$(Shift2)] run tag @s add bounding_box
