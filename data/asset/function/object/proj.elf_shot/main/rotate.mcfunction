#> asset:object/proj.elf_shot/main/rotate
#

function lib:interval/ {Tick:9,Offset:2}

execute if score $Interval _ matches 0 run data merge entity @s {transformation:{left_rotation:{axis:[0,0,1],angle:4.186}},interpolation_duration:3,start_interpolation:0}
execute if score $Interval _ matches 3 run data merge entity @s {transformation:{left_rotation:{axis:[0,0,1],angle:8.373}},interpolation_duration:3,start_interpolation:0}
execute if score $Interval _ matches 6 run data merge entity @s {transformation:{left_rotation:{axis:[0,0,1],angle:0.000}},interpolation_duration:3,start_interpolation:0}
