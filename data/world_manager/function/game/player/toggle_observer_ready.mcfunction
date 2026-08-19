#> world_manager:game/player/toggle_observer_ready

execute if entity @s[tag=Game.ObserverReady] run return run function world_manager:game/player/unready

function world_manager:game/player/clear_ready
tag @s add Game.ObserverReady
team join Game.Observe @s
effect give @s glowing infinite 0 true
tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"観戦者として準備完了","color":"aqua"}]
