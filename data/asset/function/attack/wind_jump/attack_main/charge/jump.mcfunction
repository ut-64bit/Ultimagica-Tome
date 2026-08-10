#> asset:attack/wind_jump/attack_main/charge/jump
#

# 飛ばす
	scoreboard players set $x hb.Motion 0
	scoreboard players set $y hb.Motion 12000
	execute unless predicate lib:flag/on_ground run scoreboard players set $y hb.Motion 10000
	scoreboard players set $z hb.Motion 0
	function lib:motion/reset
	function #p_motion:xyz

# 無敵
	function api:player/invincibility/set {duration:6}

# 演出
	playsound entity.breeze.jump neutral @a ~ ~ ~ 1 0.8
	playsound entity.breeze.wind_burst neutral @a ~ ~ ~ 1 1.1
	particle gust_emitter_small ~ ~1 ~ 0 0 0 0 1 force
	function api:clear_in
	function api:object/summon.m {ID:"particle.wind_jump"}

# MP消費
	data modify storage api: in.Amount set value 5
	function api:stamina/consume
