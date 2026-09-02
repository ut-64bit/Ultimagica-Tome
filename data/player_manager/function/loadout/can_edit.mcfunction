#> player_manager:loadout/can_edit

# 通常のロビー、または現在の試合に参加せずロビーで待機中なら変更できる。
execute unless data storage world_manager:game {state:"lobby"} unless entity @s[tag=Game.Waiting] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"試合に関わっている間はロードアウトを変更できません。","color":"red"}]
execute unless data storage world_manager:game {state:"lobby"} unless entity @s[tag=Game.Waiting] run return 0

execute if entity @s[tag=Game.Ready] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"変更するには準備を解除してください。","color":"red"}]
execute if entity @s[tag=Game.Ready] run return 0
execute if entity @s[tag=Game.ObserverReady] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"変更するには準備を解除してください。","color":"red"}]
execute if entity @s[tag=Game.ObserverReady] run return 0

execute if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"観戦者はロードアウトを変更できません。","color":"red"}]
execute if entity @s[gamemode=spectator] run return 0

return 1
