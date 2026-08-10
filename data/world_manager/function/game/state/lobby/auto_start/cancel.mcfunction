#> world_manager:game/state/lobby/auto_start/cancel

execute unless data storage world_manager:game auto_start_pending run return 0

data remove storage world_manager:game auto_start_pending
scoreboard players set #Game Game.Timer 0
title @a clear

tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"未準備のプレイヤーがいるため、自動開始を中止しました。","color":"yellow"}]

return 1
