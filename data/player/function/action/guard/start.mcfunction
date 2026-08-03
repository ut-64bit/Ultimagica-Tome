#> player:action/guard/start
#

# フラグを立てる
	tag @s add Guard

# 移動速度を下げる
	attribute @s movement_speed modifier add player:guard -0.3 add_multiplied_base

# 演出
	playsound item.armor.equip_iron player @s ~ ~ ~ 1 1.5
	execute anchored eyes positioned ^ ^-0.2 ^-0.2 run particle crit ~ ~ ~ 0.3 0.3 0.3 0 5 normal
