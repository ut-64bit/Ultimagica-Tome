# フラグを折る
	tag @s remove Player.Guard

# 移動速度を戻す
	attribute @s movement_speed modifier remove player:guard

# 演出
	playsound item.armor.unequip_nautilus player @s ~ ~ ~ 1 1.5
	execute anchored eyes positioned ^ ^-0.2 ^-0.2 run particle crit ~ ~ ~ 0.3 0.3 0.3 0 5 normal
