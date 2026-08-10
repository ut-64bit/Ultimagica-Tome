#> player:menu/click/common/cannot_action
#
# その操作はできない！
#
# @within function player:menu/click/**

# 通知する
	playsound block.note_block.bit player @s ~ ~ ~ 0.8 0.5 1
	tellraw @s {"translate":"t_magic.notice.cannot_use","color":"red"}
