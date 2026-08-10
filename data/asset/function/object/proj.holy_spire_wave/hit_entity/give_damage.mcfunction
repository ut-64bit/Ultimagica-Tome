#> asset:object/proj.holy_spire_wave/hit_entity/give_damage
#

function api:damage/give_damage

# カチ上げる
	scoreboard players set $x hb.Motion 0
	scoreboard players set $y hb.Motion 7000
	scoreboard players set $z hb.Motion 0
	function #p_motion:xyz

# 怯む
	function api:player/stagger {duration:6}
	function api:player/attack/reset_combo
