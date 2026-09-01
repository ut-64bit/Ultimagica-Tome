#> asset:object/proj.fire_explode/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 少しずつ低速する
	scoreboard players add @s MoveCount 1
	execute if score @s MoveCount matches 30 run data modify storage asset:context this.Speed set value 6
	execute if score @s MoveCount matches 50 run data modify storage asset:context this.Speed set value 3
	execute if score @s MoveCount matches 70 run data modify storage asset:context this.Speed set value 1

# 演出
	function asset:object/proj.fire_explode/recursive/particle
