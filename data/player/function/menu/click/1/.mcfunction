#> player:menu/click/1/
#
# slot1をクリックしたときの処理
#
# @within function player:menu/tick

# メニュー別に処理を分ける
	function player:menu/click/1/menu

# アイテムの返却
	function player:menu/return_item.m {slot:1}

# メニュー更新
	function player:menu/update
