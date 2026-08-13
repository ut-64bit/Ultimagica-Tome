#> asset:attack/fire_breath/attack_main/jump

# 飛ぶ
	scoreboard players set $x hb.Motion 0
	scoreboard players set $y hb.Motion 2000
	scoreboard players set $z hb.Motion 0
	function lib:motion/reset
	function #p_motion:xyz

# 演出
	playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 1
