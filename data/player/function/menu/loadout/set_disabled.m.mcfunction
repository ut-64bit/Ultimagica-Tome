#> player:menu/loadout/set_disabled.m
# macro: {outer_slot:int,title:string,outer_model:string}

$item replace entity @s player.crafting.$(outer_slot) with structure_void[custom_data={slot:$(outer_slot),menu:{}},custom_name={text:"$(title)",color:"dark_gray",italic:false},lore=[{text:"保存された構成がありません",color:"dark_gray",italic:false}],item_model="$(outer_model)",max_stack_size=1]
