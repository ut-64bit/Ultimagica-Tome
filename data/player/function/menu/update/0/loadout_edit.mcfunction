#> player:menu/update/0/loadout_edit

execute unless entity @s[tag=Menu.LoadoutDeleteConfirm] run item replace entity @s player.crafting.0 with structure_void[custom_data={slot:0,menu:{}},custom_name={text:"構成を削除",color:"red",italic:false},lore=[{text:"誤操作防止のため2回クリックで削除",color:"gray",italic:false}],item_model="lava_bucket",max_stack_size=1]
execute if entity @s[tag=Menu.LoadoutDeleteConfirm] run item replace entity @s player.crafting.0 with structure_void[custom_data={slot:0,menu:{}},custom_name={text:"もう一度クリックで削除",color:"red",bold:true,italic:false},lore=[{text:"この操作は取り消せません",color:"dark_red",italic:false}],item_model="barrier",max_stack_size=1,enchantment_glint_override=true]
