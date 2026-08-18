#> asset:attack/elf_jump/attack_main/normal/jump
#

# 飛ばす
	scoreboard players set $x hb.Motion 0
	scoreboard players set $y hb.Motion 9500
	execute unless predicate lib:flag/on_ground run scoreboard players set $y hb.Motion 7700
	scoreboard players set $z hb.Motion 0
	function lib:motion/reset
	function #p_motion:xyz
	effect give @s slow_falling 3 0 true

# 無敵
	function api:player/invincibility/set {duration:4}

# 演出
	playsound entity.breeze.wind_burst neutral @a ~ ~ ~ 1 0.9
	function api:clear_in
	function api:object/summon.m {ID:"particle.elf_jump"}
