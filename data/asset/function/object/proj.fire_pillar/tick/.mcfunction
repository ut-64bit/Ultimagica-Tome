#> asset:object/proj.fire_pillar/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1
rotate @s ~20 ~


# 定期的にダメージを与える
	function lib:interval/ {Tick:15,Offset:1}
	execute if score $Interval _ matches 0 run function asset:object/proj.fire_pillar/tick/create_attack_data

# エンティティへの衝突
	execute if score @s General.Tick matches 15.. run function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

#ぶぉおん！！
	execute if score @s General.Tick matches 10 run data merge entity @s { transformation:{ scale:[3,4.5,3], translation:[0,2.25,0]  }, interpolation_duration:5, start_interpolation:0 }
#閉じる
	execute if score @s General.Tick matches 55 run data merge entity @s { transformation:{ scale:[2,0,2], translation:[0,0,0]  }, interpolation_duration:5, start_interpolation:0 }

# 演出
	function asset:object/proj.fire_pillar/tick/particle_origin
	execute if score @s General.Tick matches 15 run particle explosion ~ ~ ~ 3 0 3 0 20 force
	execute if score @s General.Tick matches 15 run playsound entity.generic.explode player @a ~ ~ ~ 1 1

execute if score @s General.Tick matches 60.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
