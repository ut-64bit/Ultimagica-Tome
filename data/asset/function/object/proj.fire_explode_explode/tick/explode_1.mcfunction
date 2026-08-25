#> asset:object/proj.fire_explode_explode/tick/explode_1
#

# ダメージを与える
	execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=3,dy=3,dz=3] unless function api:damage/is_invincible run tag @s add _hit

	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s feet run function api:ray_cast/entity_ray.m {Range:2.5}
	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s eyes run function api:ray_cast/entity_ray.m {Range:2.5}
	tag @e[tag=_hit,distance=..100] remove _hit

	data modify storage api: in set value { Damage:2, Element:"fire", School:"fire", Tags:["magecraft","explosion"] }
	function api:damage/create_attack_data
	execute as @e[tag=_ray,distance=..100] unless function api:damage/is_invincible run function asset:object/proj.fire_explode_explode/tick/damage
	tag @e[tag=_ray,distance=..100] remove _ray
