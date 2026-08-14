#> asset:object/proj.wind_blast/recursive/explode
#

# ダメージを与える
	execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=2,dy=2,dz=2] unless function api:damage/is_invincible run tag @s add _hit

	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s feet run function api:ray_cast/entity_ray.m {Range:2.5}
	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s eyes run function api:ray_cast/entity_ray.m {Range:2.5}
	tag @e[tag=_hit,distance=..100] remove _hit

	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute as @e[tag=_ray,distance=..100] unless function api:damage/is_invincible run function api:damage/give_damage
	tag @e[tag=_ray,distance=..100] remove _ray

# 演出
	particle explosion ~ ~ ~ 0 0 0 0 1 force
	playsound entity.generic.explode neutral @a ~ ~ ~ 0.3 1.0
