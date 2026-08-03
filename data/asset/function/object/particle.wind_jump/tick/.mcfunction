#> asset:object/particle.wind_jump/tick/
#
# Tick処理
#

scoreboard players add @s General.Tick 1

# scoreboard players operation #t_Interval _ = @s General.Tick
# scoreboard players remove #t_Interval _ 1
# scoreboard players operation #t_Interval _ %= #c_9 const

# execute if score #t_Interval _ matches 0 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:4.186}},interpolation_duration:3,start_interpolation:0}
# execute if score #t_Interval _ matches 3 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:8.373}},interpolation_duration:3,start_interpolation:0}
# execute if score #t_Interval _ matches 6 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:0.000}},interpolation_duration:3,start_interpolation:0}


execute if score @s General.Tick matches 2 run data merge entity @s {transformation:{scale:[1,1,1],left_rotation:{axis:[0,1,0],angle:4.186}},interpolation_duration:3,start_interpolation:0}
execute if score @s General.Tick matches 5 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:8.373}},interpolation_duration:3,start_interpolation:0}
execute if score @s General.Tick matches 8 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:0.000}},interpolation_duration:3,start_interpolation:0}

execute if score @s General.Tick matches 11 run data merge entity @s {transformation:{scale:[1.7,0,1.7],translation:[0,1.2,0],left_rotation:{axis:[0,1,0],angle:4.186}},interpolation_duration:7,start_interpolation:0}
execute if score @s General.Tick matches 18.. run function api:common/auto_kill
