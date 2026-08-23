#> player:menu/click/3/menu
# @within function player:menu/click/3/

# 構成編集
	execute if entity @s[tag=Menu.LoadoutEdit] run return run function player:menu/click/3/menu/loadout_edit

# 構成管理
	execute if entity @s[tag=Menu.Loadout] run return run function player:menu/click/3/menu/loadout

# ロビー
	execute if data storage world_manager:game {state:"lobby"} run return run function player:menu/click/3/menu/lobby

# メインメニュー
	function player:menu/click/3/menu/main
