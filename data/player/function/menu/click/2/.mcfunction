#> player:menu/click/2/
#
# slot2をクリックしたときの処理
#
# @within function player:menu/tick

# メニュー別に処理を分ける
	function player:menu/click/2/menu

# アイテムの返却
	function player:menu/return_item.m {slot:2}

# メニュー更新
	function player:menu/update
