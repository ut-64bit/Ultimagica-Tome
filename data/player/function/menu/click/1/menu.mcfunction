#> player:menu/click/1/menu
# @within function player:menu/click/1/

# ロビー
	execute if data storage world_manager:game {state:"lobby"} run return run function player:menu/click/1/menu/lobby

# メインメニュー
	function player:menu/click/1/menu/main
