#> player:menu/click/0/menu
# @within function player:menu/click/0/

# ロビー
	execute if data storage world_manager:game {state:"lobby"} run return run function player:menu/click/0/menu/lobby

# メインメニュー
	function player:menu/click/0/menu/main
