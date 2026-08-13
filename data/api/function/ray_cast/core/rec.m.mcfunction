#> api:ray_cast/core/rec.m
#

# デバッグ用パーティクル
	particle trail{color:[0,1,0],duration:1,target:[0,-2000,0]} ^ ^ ^ 0 0 0 0 1 normal @a[gamemode=creative]
	particle trail{color:[0,1,0],duration:1,target:[0,-2000,0]} ^ ^ ^0.125 0 0 0 0 1 normal @a[gamemode=creative]

# ブロック
	execute unless block ^ ^ ^ #lib:no_collision_simple run return fail

# エンティティ
	execute positioned ~-0.125 ~-0.125 ~-0.125 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=0] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run return run tag @s add _ray

# 再帰する
	$execute if entity @s[distance=..$(Range)] positioned ^ ^ ^0.25 run function api:ray_cast/core/rec.m with storage api: in
