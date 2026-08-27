#> asset:effect/skill_thunder/given/

function lib:motion/reset
function api:player/stagger {duration:10}

attribute @s movement_speed modifier remove effect:skill_thunder
attribute @s movement_speed modifier add effect:skill_thunder -0.5 add_multiplied_base

# 演出
	particle flash{color:-1} ~ ~ ~ 0 0 0 0 1 force
	execute at @s positioned ~ ~1 ~ run function api:object/summon.m {ID:"particle.spark"}
	playsound t_magic:electric_shock neutral @a ~ ~ ~ 1.3 1.3
	playsound entity.allay.death neutral @a ~ ~ ~ 1.3 1
	# playsound entity.generic.explode neutral @a ~ ~ ~ 1.3 2
