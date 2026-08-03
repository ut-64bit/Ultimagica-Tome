#> player:action/dodge_cancel
#
# 回避を中断する
#

# フラグを折る
	tag @s remove Dodge

# modifier削除
	attribute @s gravity modifier remove player:dodge
	attribute @s movement_speed modifier remove player:dodge

# リセット
	scoreboard players set @s Dodge.Duration 0
	scoreboard players set @s Dodge.CoolTime 0
