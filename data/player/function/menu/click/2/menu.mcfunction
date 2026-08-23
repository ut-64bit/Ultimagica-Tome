#> player:menu/click/2/menu
# @within function player:menu/click/2/

# 構成編集
	execute if entity @s[tag=Menu.LoadoutEdit] run return run function player:menu/click/2/menu/loadout_edit

# 構成管理
	execute if entity @s[tag=Menu.Loadout] run return run function player:menu/click/2/menu/loadout

# メインメニュー
	function player:menu/click/2/menu/main
