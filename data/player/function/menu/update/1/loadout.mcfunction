#> player:menu/update/1/loadout

function player_manager:loadout/preset/ensure
data modify storage player_manager:loadout temp.menu_preset.config set value {action:"loadout_preset_load",entry_description:"クリックで構成を呼び出す"}
function player:menu/loadout/build

data modify storage player_manager:loadout temp.menu_preset.outer set value {outer_slot:1,title:"構成の呼び出し",description:"呼び出す構成を選択",outer_model:"ender_chest",contents:[]}
data modify storage player_manager:loadout temp.menu_preset.outer.contents set from storage player_manager:loadout temp.menu_preset.contents
execute if data storage player_manager:loadout temp.menu_preset.contents[0] run function player:menu/loadout/set_bundle.m with storage player_manager:loadout temp.menu_preset.outer
execute unless data storage player_manager:loadout temp.menu_preset.contents[0] run function player:menu/loadout/set_disabled.m with storage player_manager:loadout temp.menu_preset.outer
data remove storage player_manager:loadout temp.menu_preset
