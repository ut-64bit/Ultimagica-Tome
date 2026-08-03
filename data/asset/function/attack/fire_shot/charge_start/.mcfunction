#> asset:attack/fire_shot/charge_start/
#

attribute @s movement_speed modifier add player:cooltime -0.3 add_multiplied_base
function player:action/guard_cancel

# 演出
	function asset:attack/_common/vfx/cast_start/fire
