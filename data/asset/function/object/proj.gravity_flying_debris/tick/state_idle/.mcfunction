#> asset:object/proj.gravity_flying_debris/tick/state_idle/
#

scoreboard players add @s General.Tick 1

#上昇
tp @s ~ ~0.1 ~

# エンティティへの衝突
	function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

execute if score @s General.Tick matches 10.. if predicate lib:random_chance/50 run function asset:object/proj.gravity_flying_debris/tick/state_idle/shot
