#> world_manager:game/state/lobby/tick

execute as @a[scores={Game.Ready=1..}] run function world_manager:game/player/toggle_ready

execute store result score #PlayerCount _ if entity @a
execute store result score #ReadyCount _ if entity @a[tag=Game.Ready]
execute store result score #MinimumPlayers _ run data get storage world_manager:game config.min_players

# 全員が準備完了していなければ、自動開始待機を解除する。
execute unless score #PlayerCount _ = #ReadyCount _ run return run function world_manager:game/state/lobby/auto_start/cancel
execute if score #ReadyCount _ < #MinimumPlayers _ run return run function world_manager:game/state/lobby/auto_start/cancel

# 条件を満たした時点から待機を開始する。
execute unless data storage world_manager:game auto_start_pending run return run function world_manager:game/state/lobby/auto_start/begin

execute if score #Game Game.Timer matches 1.. run scoreboard players remove #Game Game.Timer 1
execute if score #Game Game.Timer matches 0 run return run function world_manager:game/start
