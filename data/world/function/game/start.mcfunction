#> world:game/start
#
# ロビーで準備完了しているプレイヤーを参加者として試合を開始する。
# 実行例: /function world:game/start

execute unless data storage world:game {state:"lobby"} run return fail

execute store result score #ReadyCount _ if entity @a[tag=Game.Ready]
execute store result score #MinimumPlayers _ run data get storage world:game config.min_players

execute if score #ReadyCount _ < #MinimumPlayers _ run tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"準備完了のプレイヤーが足りません。","color":"red"}]
execute if score #ReadyCount _ < #MinimumPlayers _ run return fail

return run function world:game/state/countdown/enter
