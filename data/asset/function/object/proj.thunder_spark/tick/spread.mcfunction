#> asset:object/proj.thunder_spark/tick/spread
#

execute store result score #t_Pitch _ run random value 1..4
execute store result score #t_Yaw _ run random value 1..4

execute if score #t_Pitch _ matches 1 facing ^ ^0.15 ^1 run rotate @s ~ ~
execute if score #t_Pitch _ matches 2 facing ^ ^0.1 ^1 run rotate @s ~ ~
execute if score #t_Pitch _ matches 3 facing ^ ^-.1 ^1 run rotate @s ~ ~
execute if score #t_Pitch _ matches 4 facing ^ ^-.15 ^1 run rotate @s ~ ~

execute if score #t_Yaw _ matches 1 rotated as @s facing ^0.15 ^ ^1 run rotate @s ~ ~
execute if score #t_Yaw _ matches 2 rotated as @s facing ^0.1 ^ ^1 run rotate @s ~ ~
execute if score #t_Yaw _ matches 3 rotated as @s facing ^-.1 ^ ^1 run rotate @s ~ ~
execute if score #t_Yaw _ matches 4 rotated as @s facing ^-.15 ^ ^1 run rotate @s ~ ~

# あとしまつ
	scoreboard players reset #t_Pitch _
	scoreboard players reset #t_Yaw _
