#> player_manager:loadout/preset/delete.m
# 指定された保存済み構成を検証して削除する。
# macro: {slot:int,number:int}

execute unless function player_manager:loadout/can_edit run return 0
function player_manager:loadout/preset/ensure
data remove storage player_manager:loadout temp.preset

$scoreboard players set #LoadoutPresetSlot _ $(slot)
execute store result score #LoadoutPresetCount _ run data get storage player:context this.LoadoutPresets
execute unless score #LoadoutPresetSlot _ matches 0.. run return run function player_manager:loadout/preset/error/slot
execute if score #LoadoutPresetSlot _ >= #LoadoutPresetCount _ run return run function player_manager:loadout/preset/error/slot

$data modify storage player_manager:loadout temp.preset.action set value {slot:$(slot),number:$(number)}
function player_manager:loadout/preset/delete_at.m with storage player_manager:loadout temp.preset.action
function player_manager:loadout/preset/message/delete.m with storage player_manager:loadout temp.preset.action
data remove storage player_manager:loadout temp.preset
return 1
