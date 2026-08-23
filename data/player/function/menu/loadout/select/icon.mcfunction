#> player:menu/loadout/select/icon

execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"shulker_box"}}] run function player_manager:loadout/preset/icon/set.m {icon:"shulker_box"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"chest"}}] run function player_manager:loadout/preset/icon/set.m {icon:"chest"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"ender_chest"}}] run function player_manager:loadout/preset/icon/set.m {icon:"ender_chest"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"nether_star"}}] run function player_manager:loadout/preset/icon/set.m {icon:"nether_star"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"amethyst_shard"}}] run function player_manager:loadout/preset/icon/set.m {icon:"amethyst_shard"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"blaze_powder"}}] run function player_manager:loadout/preset/icon/set.m {icon:"blaze_powder"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"heart_of_the_sea"}}] run function player_manager:loadout/preset/icon/set.m {icon:"heart_of_the_sea"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"feather"}}] run function player_manager:loadout/preset/icon/set.m {icon:"feather"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"diamond"}}] run function player_manager:loadout/preset/icon/set.m {icon:"diamond"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"emerald"}}] run function player_manager:loadout/preset/icon/set.m {icon:"emerald"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"echo_shard"}}] run function player_manager:loadout/preset/icon/set.m {icon:"echo_shard"}
execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon",icon:"book"}}] run function player_manager:loadout/preset/icon/set.m {icon:"book"}

tag @s remove Menu.LoadoutDeleteConfirm
stopsound @s player item.bundle.remove_one
function player:menu/update
