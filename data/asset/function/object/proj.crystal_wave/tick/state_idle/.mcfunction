#> asset:object/proj.crystal_wave/tick/state_idle/
#

scoreboard players add @s General.Tick 1

# エンティティへの衝突
	execute if score @s General.Tick matches 5.. run function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# 演出
	particle enchant ~ ~0.3 ~ 0.3 0.3 0.3 0 1 normal
	execute if score @s General.Tick matches 1 run data merge entity @s {transformation:{scale:[1,1,1]},interpolation_duration:25,start_interpolation:0}
	execute if score @s General.Tick matches 1..30 run function asset:object/proj.crystal_wave/tick/state_idle/vfx.m with entity @s
	execute if score @s General.Tick matches 35 run playsound block.amethyst_block.place player @a ~ ~ ~ 0.4 1.1

execute if score @s General.Tick matches 100.. run function api:common/auto_kill
