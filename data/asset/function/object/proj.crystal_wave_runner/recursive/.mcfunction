#> asset:object/proj.holy_shot/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_7 const

# 演出
	execute if score #t_Interval _ matches 0 run function asset:object/proj.crystal_wave_runner/recursive/place/

scoreboard players reset #t_Interval _
