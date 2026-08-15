#> asset:object/proj.gravity_bump/tick/model

execute store result score #model _ run random value 1..3

execute if score #model _ matches 1 run data merge entity @s {transformation:{scale:[1.5,2.0,1.5]},interpolation_duration:1,start_interpolation:0}
execute if score #model _ matches 2 run data merge entity @s {transformation:{scale:[1.5,2.5,1.5]},interpolation_duration:1,start_interpolation:0}
execute if score #model _ matches 3 run data merge entity @s {transformation:{scale:[1.5,3.0,1.5]},interpolation_duration:1,start_interpolation:0}

scoreboard players reset #model _
