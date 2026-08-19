#> player:menu/update/0/lobby
# 参加者として準備完了するボタン

execute if entity @s[tag=!Game.Ready] run item replace entity @s player.crafting.0 with structure_void[custom_data={slot:0,menu:{}},item_model="nether_star",max_stack_size=1,custom_name={text:"参加者として準備完了",color:"gold",italic:false}]
execute if entity @s[tag= Game.Ready] run item replace entity @s player.crafting.0 with structure_void[custom_data={slot:0,menu:{}},item_model="nether_star",max_stack_size=1,custom_name={text:"準備取り消し",color:"red",italic:false},enchantment_glint_override=true]
