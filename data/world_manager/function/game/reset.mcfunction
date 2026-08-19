#> world_manager:game/reset
#
# 試合情報を破棄してロビーへ戻す。

execute if data storage world_manager:game runtime.stage run function world_manager:game/dispatch/stage/reset.m with storage world_manager:game runtime

data modify storage world_manager:game state set value "lobby"
data remove storage world_manager:game auto_start_pending
scoreboard players set #Game Game.Timer 0
scoreboard players reset @a Game.Deaths

effect clear @a[tag=Game.Ready] glowing
effect clear @a[tag=Game.ObserverReady] glowing
team leave @a[tag=Game.Ready]
team leave @a[tag=Game.ObserverReady]
tag @a remove Game.Ready
tag @a remove Game.Participant
tag @a remove Game.Active
tag @a remove Game.Eliminated
tag @a remove Game.Observer
tag @a remove Game.TempSpectator

execute as @e[tag=AssetObject] run function api:common/auto_kill
gamemode adventure @a
clear @a
execute as @a run function world_manager:lobby/teleport.m with storage world_manager:game config.lobby
execute as @a[tag=Game.ObserverReady] run function world_manager:game/player/restore_observer_ready
gamerule pvp false

data remove storage world_manager:game runtime

tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"ロビーに戻りました。クイックメニューから準備状態を選択できます。","color":"yellow"}]
