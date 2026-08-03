#> player:action/guard_cancel
#
# ガードを中断する
#

# フラグを折る
	tag @s remove Guard

# 移動速度を戻す
	attribute @s movement_speed modifier remove player:guard

# リセット
	scoreboard players set @s GuardTime 0
	scoreboard players set @s GuardLockTime 0
