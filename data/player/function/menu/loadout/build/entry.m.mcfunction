#> player:menu/loadout/build/entry.m
# macro: {action:string,entry_description:string,icon:string,slot:int,number:int}

$data modify storage player_manager:loadout temp.menu_preset.contents append value {id:"structure_void",components:{custom_data:{menu:{id:"$(action)",slot:$(slot)}},custom_name:{text:"構成 $(number)",color:"white",italic:false},lore:[{text:"$(entry_description)",color:"gray",italic:false}],item_model:"$(icon)",max_stack_size:1}}
