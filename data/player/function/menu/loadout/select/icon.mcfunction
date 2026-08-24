#> player:menu/loadout/select/icon
# バンドル内で選択された位置の登録アイコンを構成へ設定する。

execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:0}}] run function player_manager:loadout/preset/icon/select_page.m {slot:0}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:1}}] run function player_manager:loadout/preset/icon/select_page.m {slot:1}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:2}}] run function player_manager:loadout/preset/icon/select_page.m {slot:2}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:3}}] run function player_manager:loadout/preset/icon/select_page.m {slot:3}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:4}}] run function player_manager:loadout/preset/icon/select_page.m {slot:4}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:5}}] run function player_manager:loadout/preset/icon/select_page.m {slot:5}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:6}}] run function player_manager:loadout/preset/icon/select_page.m {slot:6}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:7}}] run function player_manager:loadout/preset/icon/select_page.m {slot:7}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:8}}] run function player_manager:loadout/preset/icon/select_page.m {slot:8}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:9}}] run function player_manager:loadout/preset/icon/select_page.m {slot:9}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:10}}] run function player_manager:loadout/preset/icon/select_page.m {slot:10}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",slot:11}}] run function player_manager:loadout/preset/icon/select_page.m {slot:11}

tag @s remove Menu.LoadoutDeleteConfirm
stopsound @s player item.bundle.remove_one
function player:menu/update
