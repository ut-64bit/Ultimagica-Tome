#> asset:object/beam.magic_beam/main/
#
# 更新処理
#

scoreboard players add @s General.Tick 1

execute if score @s General.Tick matches 2 run function asset:object/abstract.beam/main/shot_ray
execute if score @s General.Tick matches 4 run function asset:object/abstract.beam/main/shot_ray
execute if score @s General.Tick matches 6 run function asset:object/abstract.beam/main/shot_ray
execute if score @s General.Tick matches 8 run function asset:object/abstract.beam/main/shot_ray
execute if score @s General.Tick matches 10 run function asset:object/abstract.beam/main/shot_ray

# 演出
	execute if score @s General.Tick matches 1 on passengers run data modify entity @s transformation.scale[0] set value 0.15
	execute if score @s General.Tick matches 1 on passengers run data modify entity @s transformation.scale[2] set value 0.15
	execute if score @s General.Tick matches 1 on passengers run data merge entity @s {interpolation_duration:1,start_interpolation:0}

	execute if score @s General.Tick matches 11 on passengers run data modify entity @s transformation.scale[0] set value 0
	execute if score @s General.Tick matches 11 on passengers run data modify entity @s transformation.scale[2] set value 0
	execute if score @s General.Tick matches 11 on passengers run data merge entity @s {interpolation_duration:2,start_interpolation:0}


execute if score @s General.Tick matches 14.. run function api:common/auto_kill
