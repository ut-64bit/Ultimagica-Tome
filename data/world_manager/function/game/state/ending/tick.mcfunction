#> world_manager:game/state/ending/tick

# ロビー待機者を除き、終了処理後に参加したプレイヤーも観戦状態に統一する。
execute as @a[tag=!Game.Participant,tag=!Game.Observer,tag=!Game.Waiting] run function world_manager:game/player/observe
# gamemode spectator @a[gamemode=!spectator]

execute if score #Game Game.Timer matches 1.. run scoreboard players remove #Game Game.Timer 1
execute if score #Game Game.Timer matches 0 run return run function world_manager:game/reset
