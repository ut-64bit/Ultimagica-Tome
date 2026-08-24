#> player:menu/loadout/icon/set_bundle.m
# 現在ページをツールチップの2行目に埋め込んだアイコン選択バンドルを配置する。
# macro: {outer_slot:int,title:string,description:string,outer_model:string,contents:list,page:int,total:int}

$item replace entity @s player.crafting.$(outer_slot) with bundle[custom_data={slot:$(outer_slot),menu:{}},custom_name={text:"$(title)",color:"gold",italic:false},lore=[{text:"$(description)",color:"gray",italic:false},{text:"ページ $(page) / $(total)",color:"dark_gray",italic:false}],item_model="$(outer_model)",bundle_contents=$(contents)]
