#> asset:object/proj.gravity_bump/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1
execute if score @s General.Tick matches ..14 if predicate lib:random_chance/50 run scoreboard players add @s General.Tick 1

# エンティティへの衝突
	execute if score @s General.Tick matches 15 run function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# 触れたらダメージを与える
	execute if score @s General.Tick matches 25 run function asset:object/proj.gravity_bump/tick/create_attack_data
	execute if score @s General.Tick matches 25.. run function asset:object/proj.gravity_bump/tick/duration_assessment

# 演出
	execute if score @s General.Tick matches ..15 run function asset:object/proj.gravity_bump/tick/particle_summon
	execute if score @s General.Tick matches 15 run function asset:object/proj.gravity_bump/tick/model
	execute if score @s General.Tick matches 15 run function asset:object/proj.gravity_bump/tick/particle

execute if score @s General.Tick matches 300.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
