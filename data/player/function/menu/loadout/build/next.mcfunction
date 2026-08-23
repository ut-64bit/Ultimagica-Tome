#> player:menu/loadout/build/next

execute if score #LoadoutPresetMenuSlot _ matches 8.. run return 0
execute unless data storage player_manager:loadout temp.menu_preset.queue[0] run return 0
data modify storage player_manager:loadout temp.menu_preset.current set from storage player_manager:loadout temp.menu_preset.queue[0]
data remove storage player_manager:loadout temp.menu_preset.queue[0]

data modify storage player_manager:loadout temp.menu_preset.entry set from storage player_manager:loadout temp.menu_preset.config
data modify storage player_manager:loadout temp.menu_preset.entry.icon set value "shulker_box"
execute if data storage player_manager:loadout temp.menu_preset.current.Icon run data modify storage player_manager:loadout temp.menu_preset.entry.icon set from storage player_manager:loadout temp.menu_preset.current.Icon
execute store result storage player_manager:loadout temp.menu_preset.entry.slot int 1 run scoreboard players get #LoadoutPresetMenuSlot _
scoreboard players add #LoadoutPresetMenuSlot _ 1
execute store result storage player_manager:loadout temp.menu_preset.entry.number int 1 run scoreboard players get #LoadoutPresetMenuSlot _
execute if data storage player_manager:loadout temp.menu_preset.current.Loadout run function player:menu/loadout/build/entry.m with storage player_manager:loadout temp.menu_preset.entry

return run function player:menu/loadout/build/next
