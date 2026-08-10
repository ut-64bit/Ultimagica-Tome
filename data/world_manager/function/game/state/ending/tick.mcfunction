#> world_manager:game/state/ending/tick

# 終了処理後に再接続した元参加者も観戦状態に統一する。
execute as @a[tag=!Game.Participant,tag=!Game.Observer] run function world_manager:game/player/observe
gamemode spectator @a[gamemode=!spectator]

execute if score #Game Game.Timer matches 1.. run scoreboard players remove #Game Game.Timer 1
execute if score #Game Game.Timer matches 0 run return run function world_manager:game/reset
