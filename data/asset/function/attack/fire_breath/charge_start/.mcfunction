#> asset:attack/fire_breath/charge_start/
#

attribute @s movement_speed modifier add player:cooltime -0.4 add_multiplied_base
attribute @s gravity modifier add player:cooltime -0.6 add_multiplied_total

# 演出
	function asset:attack/_common/vfx/cast_start/fire
	playsound entity.ender_dragon.growl player @a ~ ~ ~ 1 1.2
