#> asset:object/proj.gravity_flying_debris/tick/state_idle/
#

scoreboard players add @s General.Tick 1

#上昇
execute if block ~ ~0.2 ~ #lib:no_collision run tp @s ~ ~0.2 ~

# エンティティへの衝突
	function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

execute if score @s General.Tick matches 5.. if predicate lib:random_chance/50 run function asset:object/proj.gravity_flying_debris/tick/state_idle/shot
