#> player:menu/update/0/loadout

function player_manager:loadout/preset/ensure
data modify storage player_manager:loadout temp.menu_preset.config set value {action:"loadout_preset_save",entry_description:"クリックで上書き保存"}
function player:menu/loadout/build

execute store result score #LoadoutPresetCount _ run data get storage player:context this.LoadoutPresets
execute if score #LoadoutPresetCount _ matches ..7 run function player:menu/loadout/build/append_new

data modify storage player_manager:loadout temp.menu_preset.outer set value {outer_slot:0,title:"構成の保存",description:"保存先を選択",outer_model:"chest",contents:[]}
data modify storage player_manager:loadout temp.menu_preset.outer.contents set from storage player_manager:loadout temp.menu_preset.contents
function player:menu/loadout/set_bundle.m with storage player_manager:loadout temp.menu_preset.outer
data remove storage player_manager:loadout temp.menu_preset
