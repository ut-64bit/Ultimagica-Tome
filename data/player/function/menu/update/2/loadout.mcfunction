#> player:menu/update/2/loadout

function player_manager:loadout/preset/ensure
data modify storage player_manager:loadout temp.menu_preset.config set value {action:"loadout_preset_edit",entry_description:"クリックで構成を編集"}
function player:menu/loadout/build

data modify storage player_manager:loadout temp.menu_preset.outer set value {outer_slot:2,title:"構成の編集",description:"編集する構成を選択",outer_model:"anvil",contents:[]}
data modify storage player_manager:loadout temp.menu_preset.outer.contents set from storage player_manager:loadout temp.menu_preset.contents
execute if data storage player_manager:loadout temp.menu_preset.contents[0] run function player:menu/loadout/set_bundle.m with storage player_manager:loadout temp.menu_preset.outer
execute unless data storage player_manager:loadout temp.menu_preset.contents[0] run function player:menu/loadout/set_disabled.m with storage player_manager:loadout temp.menu_preset.outer
data remove storage player_manager:loadout temp.menu_preset
