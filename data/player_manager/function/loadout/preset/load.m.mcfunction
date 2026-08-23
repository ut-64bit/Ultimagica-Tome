#> player_manager:loadout/preset/load.m
# 保存済み構成を現在のロードアウトへ呼び出し、アイテムと表示を更新する。
# macro: {slot:int}

execute unless function player_manager:loadout/can_edit run return 0
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

data modify storage player:context this.Loadout set from storage player_manager:loadout temp.preset.current.Loadout
function player_manager:loadout/ensure

# 古い構成のアイテムを破棄し、呼び出した構成のアイテムへ入れ替える。
# この関数はplayer:context thisが読み込まれた状態なので、apply/coreを直接呼ぶ。
clear @s
function player_manager:loadout/apply/core

function player_manager:loadout/preset/message/load.m with storage player_manager:loadout temp.preset.action

# 呼び出した構成を表示する。
function player_manager:loadout/magic/show
function player_manager:loadout/skill/show

data remove storage player_manager:loadout temp.preset
return 1
