#> player:menu/click/0/
#
# slot0をクリックしたときの処理
#
# @within function player:menu/tick

# メニュー別に処理を分ける
	function player:menu/click/0/menu

# アイテムの返却
	function player:menu/return_item.m {slot:0}

# メニュー更新
	function player:menu/update
