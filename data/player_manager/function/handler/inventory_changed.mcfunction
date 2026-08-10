#> player_manager:handler/inventory_changed
#
# インベントリ更新時に実行される関数
#
# @handler

# リセット
	advancement revoke @s only player:handler/inventory_changed

# PlayTrackerのタグを付与する
	tag @s add InventoryChanged
