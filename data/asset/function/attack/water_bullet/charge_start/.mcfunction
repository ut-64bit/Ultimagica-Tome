#> asset:attack/water_bullet/charge_start/
#

attribute @s movement_speed modifier add player:cooltime -0.4 add_multiplied_base
function player:action/guard_cancel

# 演出
	function asset:attack/_common/vfx/cast_start/water
