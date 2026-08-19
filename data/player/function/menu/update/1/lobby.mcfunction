#> player:menu/update/1/lobby
# 観戦者として準備完了するボタン

execute if entity @s[tag=!Game.ObserverReady] run item replace entity @s player.crafting.1 with structure_void[custom_data={slot:1,menu:{}},item_model="ender_eye",max_stack_size=1,custom_name={text:"観戦者として準備完了",color:"aqua",italic:false}]
execute if entity @s[tag=Game.ObserverReady] run item replace entity @s player.crafting.1 with structure_void[custom_data={slot:1,menu:{}},item_model="ender_eye",max_stack_size=1,custom_name={text:"観戦準備取り消し",color:"red",italic:false},enchantment_glint_override=true]
