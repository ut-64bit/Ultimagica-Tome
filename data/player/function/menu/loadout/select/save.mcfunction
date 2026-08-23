#> player:menu/loadout/select/save

execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:-1}}] run function player_manager:loadout/preset/save.m {slot:-1}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:0}}] run function player_manager:loadout/preset/save.m {slot:0}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:1}}] run function player_manager:loadout/preset/save.m {slot:1}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:2}}] run function player_manager:loadout/preset/save.m {slot:2}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:3}}] run function player_manager:loadout/preset/save.m {slot:3}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:4}}] run function player_manager:loadout/preset/save.m {slot:4}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:5}}] run function player_manager:loadout/preset/save.m {slot:5}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:6}}] run function player_manager:loadout/preset/save.m {slot:6}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save",slot:7}}] run function player_manager:loadout/preset/save.m {slot:7}

stopsound @s player item.bundle.remove_one
function player:menu/update
