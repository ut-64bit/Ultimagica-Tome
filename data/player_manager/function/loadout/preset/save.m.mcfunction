#> player_manager:loadout/preset/save.m
# 現在のロードアウトを新規または既存の構成スロットへ保存する。
# macro: {slot:int}
#
# slot=-1なら末尾へ新規保存し、それ以外なら指定位置へ上書きする。

function player_manager:loadout/preset/ensure
data remove storage player_manager:loadout temp.preset

$scoreboard players set #LoadoutPresetSlot _ $(slot)
execute store result score #LoadoutPresetCount _ run data get storage player:context this.LoadoutPresets

execute if score #LoadoutPresetSlot _ matches -1 if score #LoadoutPresetCount _ matches 8.. run return run function player_manager:loadout/preset/error/full
execute if score #LoadoutPresetSlot _ matches -1 run scoreboard players operation #LoadoutPresetSlot _ = #LoadoutPresetCount _
execute unless score #LoadoutPresetSlot _ matches 0.. run return run function player_manager:loadout/preset/error/slot
execute if score #LoadoutPresetSlot _ > #LoadoutPresetCount _ run return run function player_manager:loadout/preset/error/slot

data modify storage player_manager:loadout temp.preset.action set value {slot:0,number:0}
execute store result storage player_manager:loadout temp.preset.action.slot int 1 run scoreboard players get #LoadoutPresetSlot _
scoreboard players operation #LoadoutPresetNumber _ = #LoadoutPresetSlot _
scoreboard players add #LoadoutPresetNumber _ 1
execute store result storage player_manager:loadout temp.preset.action.number int 1 run scoreboard players get #LoadoutPresetNumber _

execute if score #LoadoutPresetSlot _ = #LoadoutPresetCount _ run data modify storage player:context this.LoadoutPresets append value {Loadout:{},Icon:"shulker_box"}
function player_manager:loadout/preset/save_at.m with storage player_manager:loadout temp.preset.action
function player_manager:loadout/preset/message/save.m with storage player_manager:loadout temp.preset.action
data remove storage player_manager:loadout temp.preset
return 1
