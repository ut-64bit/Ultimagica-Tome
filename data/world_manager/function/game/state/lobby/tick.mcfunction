#> world_manager:game/state/lobby/tick

execute as @a[scores={Game.Ready=1..}] run function world_manager:game/player/toggle_ready
