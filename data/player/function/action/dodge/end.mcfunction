#> player:action/dodge/end
#
# 回避終了時の処理
#

# フラグを折る
	tag @s remove Dodge

# modifier削除
	attribute @s gravity modifier remove player:dodge
	attribute @s movement_speed modifier remove player:dodge
