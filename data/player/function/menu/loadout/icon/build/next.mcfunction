#> player:menu/loadout/icon/build/next
# アイコン候補を最大12件まで選択用アイテムへ変換する。

execute if score #LoadoutPresetIconSlot _ matches 12.. run return 0
execute unless data storage player_manager:loadout temp.menu_icon.queue[0] run return 0

data modify storage player_manager:loadout temp.menu_icon.current set from storage player_manager:loadout temp.menu_icon.queue[0]
data remove storage player_manager:loadout temp.menu_icon.queue[0]
execute store result storage player_manager:loadout temp.menu_icon.current.slot int 1 run scoreboard players get #LoadoutPresetIconSlot _
function player:menu/loadout/icon/build/entry.m with storage player_manager:loadout temp.menu_icon.current

scoreboard players add #LoadoutPresetIconSlot _ 1
return run function player:menu/loadout/icon/build/next
