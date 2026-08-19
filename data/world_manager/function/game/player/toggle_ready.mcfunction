#> world_manager:game/player/toggle_ready

execute if entity @s[tag=Game.Ready] run return run function world_manager:game/player/unready

function world_manager:game/player/clear_ready
tag @s add Game.Ready
team join Game.Ready @s
effect give @s glowing infinite 0 true
tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"参加者として準備完了","color":"green"}]
