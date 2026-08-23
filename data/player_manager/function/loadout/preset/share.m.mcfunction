#> player_manager:loadout/preset/share.m
# 指定された保存済み構成の内容を全プレイヤーへ共有する。
# macro: {slot:int}

function player_manager:loadout/preset/ensure
data remove storage player_manager:loadout temp.preset

$scoreboard players set #LoadoutPresetSlot _ $(slot)
execute store result score #LoadoutPresetCount _ run data get storage player:context this.LoadoutPresets
execute unless score #LoadoutPresetSlot _ matches 0.. run return run function player_manager:loadout/preset/error/slot
execute if score #LoadoutPresetSlot _ >= #LoadoutPresetCount _ run return run function player_manager:loadout/preset/error/slot

data modify storage player_manager:loadout temp.preset.action set value {slot:0,number:0}
execute store result storage player_manager:loadout temp.preset.action.slot int 1 run scoreboard players get #LoadoutPresetSlot _
scoreboard players operation #LoadoutPresetNumber _ = #LoadoutPresetSlot _
scoreboard players add #LoadoutPresetNumber _ 1
execute store result storage player_manager:loadout temp.preset.action.number int 1 run scoreboard players get #LoadoutPresetNumber _
function player_manager:loadout/preset/get_at.m with storage player_manager:loadout temp.preset.action
execute unless data storage player_manager:loadout temp.preset.current.Loadout run return run function player_manager:loadout/preset/error/slot

function player_manager:loadout/preset/message/share.m with storage player_manager:loadout temp.preset.action
function player_manager:loadout/preset/share/details
data remove storage player_manager:loadout temp.preset
return 1
