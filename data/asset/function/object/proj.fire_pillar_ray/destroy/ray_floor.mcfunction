#> asset:object/proj.fire_pillar_ray/destroy/ray_floor
#

# ブロックへの衝突
	execute positioned ~ ~-0.5 ~ run function asset:object/call.m {method:"detect_hit_block"}
	execute if data storage asset:context {IsHitBlock:true} run return run function asset:object/proj.fire_pillar_ray/destroy/shot
	data remove storage asset:context IsHitBlock

execute positioned ~ ~-0.5 ~ if entity @s[distance=..20] run return run function asset:object/proj.fire_pillar_ray/destroy/ray_floor
function asset:object/proj.fire_pillar_ray/destroy/shot
