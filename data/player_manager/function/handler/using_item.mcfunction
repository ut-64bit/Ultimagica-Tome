#> player_manager:handler/using_item
#
# アイテム使用時に実行される関数
#
# @handler

# リセット
	advancement revoke @s only player:handler/using_item

# PlayTrackerのタグを付与する
	tag @s add UsingItem
