#> player:action/guard/end
#

# フラグを折る
	tag @s remove Guard

# 移動速度を戻す
	attribute @s movement_speed modifier remove player:guard

# リセット
	scoreboard players set @s GuardTime 0

# 演出
	playsound item.armor.unequip_nautilus player @s ~ ~ ~ 1 1.5
	execute anchored eyes positioned ^ ^-0.2 ^-0.2 run particle crit ~ ~ ~ 0.3 0.3 0.3 0 5 normal
