#> asset:object/proj.fire_explode_explode/tick/explode_2
#

# ダメージを与える
	execute positioned ~-3 ~-3 ~-3 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=5,dy=5,dz=5] unless function api:damage/is_invincible run tag @s add _hit

	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s feet run function api:ray_cast/entity_ray.m {Range:3}
	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s eyes run function api:ray_cast/entity_ray.m {Range:3}
	tag @e[tag=_hit,distance=..100] remove _hit

	data modify storage api: in set value { Damage:4, Element:"fire", School:"fire", Tags:["magecraft","explosion"] }
	function api:damage/create_attack_data
	execute as @e[tag=_ray,distance=..100] unless function api:damage/is_invincible run function asset:object/proj.fire_explode_explode/tick/damage

# 系統スキルの残留炎
	execute positioned ~0 ~ ~-3 run function player:skill/school_fire_mastery/
	execute positioned ~1.5 ~ ~-2.59808 run function player:skill/school_fire_mastery/
	execute positioned ~2.59808 ~ ~-1.5 run function player:skill/school_fire_mastery/
	execute positioned ~3 ~ ~0 run function player:skill/school_fire_mastery/
	execute positioned ~2.59808 ~ ~1.5 run function player:skill/school_fire_mastery/
	execute positioned ~1.5 ~ ~2.59808 run function player:skill/school_fire_mastery/
	execute positioned ~0 ~ ~3 run function player:skill/school_fire_mastery/
	execute positioned ~-1.5 ~ ~2.59808 run function player:skill/school_fire_mastery/
	execute positioned ~-2.59808 ~ ~1.5 run function player:skill/school_fire_mastery/
	execute positioned ~-3 ~ ~0 run function player:skill/school_fire_mastery/
	execute positioned ~-2.59808 ~ ~-1.5 run function player:skill/school_fire_mastery/
	execute positioned ~-1.5 ~ ~-2.59808 run function player:skill/school_fire_mastery/
