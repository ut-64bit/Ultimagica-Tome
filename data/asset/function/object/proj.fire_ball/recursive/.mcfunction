#> asset:object/proj.fire_ball/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 少しずつ加速する
	scoreboard players add @s MoveCount 1
	execute if score @s MoveCount matches 20 run data modify storage asset:context this.Speed set value 5
	execute if score @s MoveCount matches 35 run data modify storage asset:context this.Speed set value 7
	execute if score @s MoveCount matches 50 run data modify storage asset:context this.Speed set value 9
	execute if score @s MoveCount matches 65 run data modify storage asset:context this.Speed set value 11

# 演出
	particle enchant ^ ^ ^ 0.3 0.3 0.3 0 1 normal
	particle dust_color_transition{from_color:16721408,to_color:4456448,scale:1.2} ^ ^ ^ 0.2 0.2 0.2 0 1 force
	execute if predicate lib:random_chance/25 run particle flame ^ ^ ^ 0.2 0.2 0.2 0.03 1 normal
	execute if score @s MoveCount matches 30 run data merge entity @s { transformation:{ scale:[1.8,1.8,3] }, interpolation_duration:10, start_interpolation:0 }
