#> asset:object/proj.fire_wall/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

# 定期的にダメージを与える
	function lib:interval/ {Tick:8,Offset:1}
	execute if score $Interval _ matches 0 run function asset:object/proj.fire_wall/tick/create_attack_data

# エンティティへの衝突
	execute if score @s General.Tick matches 30.. run function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# 演出
	particle small_flame ~ ~0.1 ~ 0.25 0 0.25 0.05 3 force
	execute if score @s General.Tick matches 30.. run function asset:object/proj.fire_wall/tick/particle
	execute if score @s General.Tick matches 25..30 if predicate lib:random_chance/10 run playsound item.firecharge.use player @a ~ ~ ~ 0.4 2
	execute if score @s General.Tick matches 30..35 if predicate lib:random_chance/10 run playsound item.firecharge.use player @a ~ ~ ~ 0.4 0

execute if score @s General.Tick matches 200.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
