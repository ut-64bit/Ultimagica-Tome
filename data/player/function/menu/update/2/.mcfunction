#> player:menu/update/2/
# @within function player:menu/update

# 構成編集
	execute if entity @s[tag=Menu.LoadoutEdit] run return run function player:menu/update/2/loadout_edit

# 構成管理
	execute if entity @s[tag=Menu.Loadout] run return run function player:menu/update/2/loadout

# メイン
	item replace entity @s player.crafting.2 with structure_void[custom_data={slot:2,menu:{}},item_model="air",max_stack_size=1,tooltip_display={hide_tooltip:true}]
