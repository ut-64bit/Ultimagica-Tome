#> asset:attack/holy_beam/attack_main/charge/macro
#

execute store result score #X _ run random value -25..25
execute if score #X _ matches -7..7 run return run function asset:attack/holy_beam/attack_main/charge/macro
execute store result storage asset:temp X float 0.1 run scoreboard players get #X _
execute store result storage asset:temp Y float 0.1 run random value -10..10
execute store result storage asset:temp Z float 0.1 run random value -10..10

function asset:attack/holy_beam/attack_main/charge/shot with storage asset:temp

data remove storage asset:temp X
data remove storage asset:temp Y
data remove storage asset:temp Z
scoreboard players reset #X _
