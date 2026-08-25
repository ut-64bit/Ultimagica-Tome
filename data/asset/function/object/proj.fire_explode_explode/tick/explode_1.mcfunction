#> asset:object/proj.fire_explode_explode/tick/explode_1
#

# ダメージを与える
	execute positioned ~-2 ~-2 ~-2 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=3,dy=3,dz=3] unless function api:damage/is_invincible run tag @s add _hit

	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s feet run function api:ray_cast/entity_ray.m {Range:2}
	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s eyes run function api:ray_cast/entity_ray.m {Range:2}
	tag @e[tag=_hit,distance=..100] remove _hit

	data modify storage api: in set value { Damage:2, Element:"fire", School:"fire", Tags:["magecraft","explosion"] }
	function api:damage/create_attack_data
	execute as @e[tag=_ray,distance=..100] unless function api:damage/is_invincible run function asset:object/proj.fire_explode_explode/tick/damage

# 系統スキルの残留炎
	execute positioned ~00.00000 ~ ~-2.00000 run function player:skill/school_fire_mastery/
	execute positioned ~01.41421 ~ ~-1.41421 run function player:skill/school_fire_mastery/
	execute positioned ~02.00000 ~ ~00.00000 run function player:skill/school_fire_mastery/
	execute positioned ~01.41421 ~ ~01.41421 run function player:skill/school_fire_mastery/
	execute positioned ~00.00000 ~ ~02.00000 run function player:skill/school_fire_mastery/
	execute positioned ~-1.41421 ~ ~01.41421 run function player:skill/school_fire_mastery/
	execute positioned ~-2.00000 ~ ~00.00000 run function player:skill/school_fire_mastery/
	execute positioned ~-1.41421 ~ ~-1.41421 run function player:skill/school_fire_mastery/
