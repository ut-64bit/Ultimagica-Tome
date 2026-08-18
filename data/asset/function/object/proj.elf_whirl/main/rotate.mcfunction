#> asset:object/proj.elf_whirl/main/rotate
#

scoreboard players operation #t_Interval _ = @s General.Tick
scoreboard players remove #t_Interval _ 1
scoreboard players operation #t_Interval _ %= #c_9 const

execute if score #t_Interval _ matches 0 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:4.186}},interpolation_duration:3,start_interpolation:0}
execute if score #t_Interval _ matches 3 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:8.373}},interpolation_duration:3,start_interpolation:0}
execute if score #t_Interval _ matches 6 run data merge entity @s {transformation:{left_rotation:{axis:[0,1,0],angle:0.000}},interpolation_duration:3,start_interpolation:0}

scoreboard players reset #t_Interval _
