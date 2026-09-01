#> asset:object/proj.water_bullet_charge/recursive/set_target
#

# ターゲット候補に一時タグを付与する
	execute as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,tag=!Untargetable,distance=..10] unless function api:damage/is_invincible run tag @s add _target

# 前方向にいるやつに絞り込む
	execute as @e[tag=_target,distance=..100] at @s facing entity @n[tag=_this,distance=..100] eyes positioned ^ ^ ^3 rotated as @n[tag=_this,distance=..100] positioned ^ ^ ^4 unless entity @s[distance=..5] run tag @s remove _target

# 射線が通っているか確認する
	execute as @e[tag=_target,distance=..100] facing entity @s eyes as @n[tag=_this,distance=..0.01] run function api:ray_cast/entity_ray.m {Range:15}
	execute as @e[tag=_target,distance=..100] run tag @s remove _target

# ターゲットを設定する
	execute store result score @s TargetID as @n[tag=_ray,distance=..100] run function lib:entity_id/get

# あとしまつ
	tag @e[tag=_ray,distance=..100] remove _ray
