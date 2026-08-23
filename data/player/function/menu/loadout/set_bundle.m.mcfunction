#> player:menu/loadout/set_bundle.m
# macro: {outer_slot:int,title:string,description:string,outer_model:string,contents:list}

$item replace entity @s player.crafting.$(outer_slot) with bundle[custom_data={slot:$(outer_slot),menu:{}},custom_name={text:"$(title)",color:"gold",italic:false},lore=[{text:"$(description)",color:"gray",italic:false}],item_model="$(outer_model)",bundle_contents=$(contents)]
