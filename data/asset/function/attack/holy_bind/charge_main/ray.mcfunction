#> asset:attack/holy_bind/charge_main/ray
#

# デバッグ用パーティクル
	particle trail{color:[0,1,0],duration:1,target:[0,-2000,0]} ^ ^ ^ 0 0 0 0 1 normal @a[gamemode=creative]
	particle trail{color:[0,1,0],duration:1,target:[0,-2000,0]} ^ ^ ^0.25 0 0 0 0 1 normal @a[gamemode=creative]

# ブロック
	execute unless block ^ ^ ^ #lib:no_collision_simple run return fail

# エンティティ
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=0] store result storage player:context this.StateMachine.state_data.Field.TargetID int 1 run return run function lib:entity_id/get

# 再帰する
	execute if entity @s[distance=..20] positioned ^ ^ ^0.5 run function asset:attack/holy_bind/charge_main/ray
