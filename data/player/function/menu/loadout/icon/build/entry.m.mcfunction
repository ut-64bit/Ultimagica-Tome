#> player:menu/loadout/icon/build/entry.m
# アイコン候補1件をバンドル内容用のアイテムへ変換する。
# macro: {icon:string,name:string,slot:int}

$data modify storage player_manager:loadout temp.menu_icon.contents append value {id:"structure_void",components:{custom_data:{menu:{id:"loadout_preset_icon",slot:$(slot)}},custom_name:{text:"$(name)",color:"white",italic:false},item_model:"$(icon)",max_stack_size:1}}
