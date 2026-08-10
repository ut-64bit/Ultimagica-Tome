#> world:game/state/lobby/tick

execute as @a[scores={Game.Ready=1..}] run function world:game/player/toggle_ready
