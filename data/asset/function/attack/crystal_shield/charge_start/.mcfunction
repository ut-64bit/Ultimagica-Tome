#> asset:attack/crystal_shield/charge_start/
#

attribute @s movement_speed modifier add player:cooltime -0.4 add_multiplied_base

# スニークチェック
	execute if predicate lib:input/sneak run function asset:attack/crystal_shield/charge_start/sneak


# 演出
	function asset:attack/_common/vfx/cast_start/crystal
