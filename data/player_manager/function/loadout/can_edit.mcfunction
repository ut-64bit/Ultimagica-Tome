#> player_manager:loadout/can_edit

execute unless data storage world_manager:game {state:"lobby"} run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"ロードアウトはロビーでのみ変更できます。","color":"red"}]
execute unless data storage world_manager:game {state:"lobby"} run return 0

execute if entity @s[tag=Game.Ready] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"変更するには準備を解除してください。","color":"red"}]
execute if entity @s[tag=Game.Ready] run return 0
execute if entity @s[tag=Game.ObserverReady] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"変更するには準備を解除してください。","color":"red"}]
execute if entity @s[tag=Game.ObserverReady] run return 0

execute if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"観戦者はロードアウトを変更できません。","color":"red"}]
execute if entity @s[gamemode=spectator] run return 0

return 1
