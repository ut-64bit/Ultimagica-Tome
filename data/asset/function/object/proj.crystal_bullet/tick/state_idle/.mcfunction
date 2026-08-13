#> asset:object/proj.crystal_bullet/tick/state_idle/
#

scoreboard players add @s General.Tick 1

# エンティティへの衝突
	execute if score @s General.Tick matches 20.. run function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# ホーミング
	execute if score @s General.Tick matches 1..35 facing entity @n[tag=_target,distance=..1000] eyes run rotate @s ~ ~

# 演出
	particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	execute if score @s General.Tick matches 1 run data merge entity @s {transformation:{scale:[0.5,0.5,0.5]},interpolation_duration:25,start_interpolation:0}
	execute if score @s General.Tick matches 2 run playsound ut_magic:frozen master @a ~ ~ ~ 1 1
	execute if score @s General.Tick matches 1..30 run function asset:object/proj.crystal_bullet/tick/state_idle/vfx.m with entity @s
	execute if score @s General.Tick matches 35 run playsound block.amethyst_block.place player @a ~ ~ ~ 1 1.1

execute if score @s General.Tick matches 39.. run function asset:object/proj.crystal_bullet/tick/state_idle/shot
