#> player:menu/update/0/
# @within function player:menu/update

# 構成編集
	execute if entity @s[tag=Menu.LoadoutEdit] run return run function player:menu/update/0/loadout_edit

# 構成管理
	execute if entity @s[tag=Menu.Loadout] run return run function player:menu/update/0/loadout

# ロビー
	execute if data storage world_manager:game {state:"lobby"} run return run function player:menu/update/0/lobby

# メイン
	item replace entity @s player.crafting.0 with structure_void[custom_data={slot:0,menu:{}},item_model="air",max_stack_size=1,tooltip_display={hide_tooltip:true}]
