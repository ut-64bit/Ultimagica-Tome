#> player:menu/loadout/select/edit

execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:0}}] run function player:menu/loadout/edit/open.m {slot:0,number:1}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:1}}] run function player:menu/loadout/edit/open.m {slot:1,number:2}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:2}}] run function player:menu/loadout/edit/open.m {slot:2,number:3}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:3}}] run function player:menu/loadout/edit/open.m {slot:3,number:4}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:4}}] run function player:menu/loadout/edit/open.m {slot:4,number:5}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:5}}] run function player:menu/loadout/edit/open.m {slot:5,number:6}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:6}}] run function player:menu/loadout/edit/open.m {slot:6,number:7}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit",slot:7}}] run function player:menu/loadout/edit/open.m {slot:7,number:8}

stopsound @s player item.bundle.remove_one
function player:menu/update
