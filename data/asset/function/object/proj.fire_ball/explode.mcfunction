#> asset:object/proj.fire_ball/explode
#

# ダメージを与える
	execute positioned ~-3 ~-3 ~-3 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,dx=5,dy=5,dz=5] unless function api:damage/is_invincible run tag @s add _hit

	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s feet run function api:ray_cast/entity_ray.m {Range:3}
	execute as @e[tag=_hit,tag=!_ray,distance=..100] facing entity @s eyes run function api:ray_cast/entity_ray.m {Range:3}
	tag @e[tag=_hit,distance=..100] remove _hit

	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute as @e[tag=_ray,distance=..100] unless function api:damage/is_invincible run function api:damage/give_damage
	tag @e[tag=_ray,distance=..100] remove _ray

# 演出
	particle explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0 1 force
	particle flame ~ ~ ~ 0 0 0 0.2 30 normal
	particle smoke ~ ~ ~ 0 0 0 0.2 30 normal
	particle poof ~ ~ ~ 0 0 0 0.3 20 normal
	particle lava ~ ~ ~ 1 1 1 1 10 normal
	playsound entity.generic.explode player @a ~ ~ ~ 1.5 1
