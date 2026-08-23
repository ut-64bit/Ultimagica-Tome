#> player:menu/loadout/select/load

execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:0}}] run function player_manager:loadout/preset/load.m {slot:0}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:1}}] run function player_manager:loadout/preset/load.m {slot:1}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:2}}] run function player_manager:loadout/preset/load.m {slot:2}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:3}}] run function player_manager:loadout/preset/load.m {slot:3}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:4}}] run function player_manager:loadout/preset/load.m {slot:4}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:5}}] run function player_manager:loadout/preset/load.m {slot:5}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:6}}] run function player_manager:loadout/preset/load.m {slot:6}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load",slot:7}}] run function player_manager:loadout/preset/load.m {slot:7}

stopsound @s player item.bundle.remove_one
function player:menu/update
