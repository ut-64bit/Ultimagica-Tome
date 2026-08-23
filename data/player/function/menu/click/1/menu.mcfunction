#> player:menu/click/1/menu
# @within function player:menu/click/1/

# 構成編集
	execute if entity @s[tag=Menu.LoadoutEdit] run return run function player:menu/click/1/menu/loadout_edit

# 構成管理
	execute if entity @s[tag=Menu.Loadout] run return run function player:menu/click/1/menu/loadout

# ロビー
	execute if data storage world_manager:game {state:"lobby"} run return run function player:menu/click/1/menu/lobby

# メインメニュー
	function player:menu/click/1/menu/main
