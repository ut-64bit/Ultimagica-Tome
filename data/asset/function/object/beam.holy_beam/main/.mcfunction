#> asset:object/beam.holy_beam/main/
#
# 更新処理
#

scoreboard players add @s General.Tick 1

execute if score @s General.Tick matches 1 run function asset:object/abstract.beam/main/shot_ray

# 演出
	execute if score @s General.Tick matches 2 on passengers run data modify entity @s transformation.scale[0] set value 0.15
	execute if score @s General.Tick matches 2 on passengers run data modify entity @s transformation.scale[2] set value 0.15
	execute if score @s General.Tick matches 2 on passengers run data merge entity @s {interpolation_duration:1,start_interpolation:0}

	execute if score @s General.Tick matches 5 on passengers run data modify entity @s transformation.scale[0] set value 0
	execute if score @s General.Tick matches 5 on passengers run data modify entity @s transformation.scale[2] set value 0
	execute if score @s General.Tick matches 5 on passengers run data merge entity @s {interpolation_duration:2,start_interpolation:0}


execute if score @s General.Tick matches 7.. run function api:common/auto_kill
