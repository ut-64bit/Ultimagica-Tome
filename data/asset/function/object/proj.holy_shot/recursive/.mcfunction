#> asset:object/proj.holy_shot/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_8 const

# 演出
	particle end_rod ^ ^ ^ 0 0 0 9999 1 force
	particle end_rod ^ ^ ^0.125 0 0 0 9999 1 force
	execute if score #t_Interval _ matches 0 run particle firework ~ ~ ~ 0.0 0.0 0.0 0.05 1 normal

scoreboard players reset #t_Interval _
