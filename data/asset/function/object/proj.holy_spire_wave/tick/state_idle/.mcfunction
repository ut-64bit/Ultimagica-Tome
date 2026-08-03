#> asset:object/proj.holy_spire_wave/tick/state_idle/
#

scoreboard players add @s General.Tick 1

# エンティティへの衝突
	execute if score @s General.Tick matches 2 run function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# 演出
	execute if score @s General.Tick matches 1 run data merge entity @s {transformation:{translation:[0,1.5,0],scale:[2,2,2]},interpolation_duration:1,start_interpolation:0}
	execute if score @s General.Tick matches 2 run playsound block.amethyst_block.place player @a ~ ~ ~ 1 1.1
	execute if score @s General.Tick matches 2 run particle end_rod ~ ~1 ~ 0.0 0.0 0.0 0.1 3 normal

execute if score @s General.Tick matches 20.. run function api:common/auto_kill
