#> player_manager:loadout/preset/icon/set.m
# macro: {icon:string}

execute unless function player_manager:loadout/can_edit run return 0
function player_manager:loadout/preset/ensure
data remove storage player_manager:loadout temp.preset

execute unless data storage player:context this.Menu.LoadoutPreset.slot run return run function player_manager:loadout/preset/error/slot
execute store result score #LoadoutPresetSlot _ run data get storage player:context this.Menu.LoadoutPreset.slot
execute store result score #LoadoutPresetCount _ run data get storage player:context this.LoadoutPresets
execute unless score #LoadoutPresetSlot _ matches 0.. run return run function player_manager:loadout/preset/error/slot
execute if score #LoadoutPresetSlot _ >= #LoadoutPresetCount _ run return run function player_manager:loadout/preset/error/slot

data modify storage player_manager:loadout temp.preset.action set from storage player:context this.Menu.LoadoutPreset
$data modify storage player_manager:loadout temp.preset.action.icon set value "$(icon)"
function player_manager:loadout/preset/icon/set_at.m with storage player_manager:loadout temp.preset.action
function player_manager:loadout/preset/message/icon.m with storage player_manager:loadout temp.preset.action
data remove storage player_manager:loadout temp.preset
return 1
