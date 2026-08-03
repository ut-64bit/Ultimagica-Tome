#> asset:object/proj.water_rain_cloud/tick/shot/
#

rotate @s ~100 0
execute store result storage asset:temp Z float 1 run random value 1..4
function asset:object/proj.water_rain_cloud/tick/shot/macro with storage asset:temp
data remove storage asset:temp Z
