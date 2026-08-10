#> world_manager:game/reset
#
# 試合情報を破棄してロビーへ戻す。

execute if data storage world_manager:game runtime.stage run function world_manager:game/dispatch/stage/reset.m with storage world_manager:game runtime

data modify storage world_manager:game state set value "lobby"
scoreboard players set #Game Game.Timer 0
scoreboard players reset @a Game.Deaths
scoreboard players reset @a Game.Ready

effect clear @a[tag=Game.Ready] glowing
team leave @a[tag=Game.Ready]
tag @a remove Game.Ready
tag @a remove Game.Participant
tag @a remove Game.Active
tag @a remove Game.Eliminated
tag @a remove Game.Observer
tag @a remove Game.TempSpectator

execute as @e[tag=AssetObject] run function api:common/auto_kill
gamemode adventure @a
gamerule pvp false

data remove storage world_manager:game runtime

tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"ロビーに戻りました。","color":"yellow"},{"text":" /trigger Game.Ready","color":"aqua"},{"text":" で準備状態を切り替えられます。","color":"gray"}]
