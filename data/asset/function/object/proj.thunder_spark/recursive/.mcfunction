#> asset:object/proj.thunder_spark/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_4 const

# 演出
	execute if predicate lib:random_chance/30 run particle enchant ^ ^ ^ 0.15 0.15 0.15 0 1 normal
	particle dust{color:16775936,scale:0.5} ^ ^ ^ 0 0 0 0 1 force
	particle dust{color:16775936,scale:0.5} ^ ^ ^0.25 0 0 0 0 1 force
	particle dust{color:16777215,scale:0.5} ^ ^ ^0.125 0.02 0.02 0.02 0 2 normal
	particle dust{color:16777215,scale:0.5} ^ ^ ^0.375 0.02 0.02 0.02 0 2 normal
	execute if score #t_Interval _ matches 0 run particle dust{color:12929279,scale:0.7} ^ ^ ^ 0.1 0.1 0.1 0 1 force

scoreboard players reset #t_Interval _
