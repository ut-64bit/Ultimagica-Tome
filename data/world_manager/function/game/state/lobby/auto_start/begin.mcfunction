#> world_manager:game/state/lobby/auto_start/begin

data modify storage world_manager:game auto_start_pending set value true
execute store result score #Game Game.Timer run data get storage world_manager:game config.auto_start_ticks
execute unless score #Game Game.Timer matches 1.. run scoreboard players set #Game Game.Timer 1

title @a title {"text":"ALL READY","color":"green","bold":true}
title @a subtitle {"text":"まもなく試合を開始します","color":"yellow"}
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 1.2 1

return 1
