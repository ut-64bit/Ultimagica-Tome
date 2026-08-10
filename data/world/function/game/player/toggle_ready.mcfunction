#> world:game/player/toggle_ready

scoreboard players set @s Game.Ready 0

execute if entity @s[tag=Game.Ready] run return run function world:game/player/unready

tag @s add Game.Ready
team join Game.Ready @s
effect give @s glowing infinite 0 true
tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"準備完了","color":"green"}]
