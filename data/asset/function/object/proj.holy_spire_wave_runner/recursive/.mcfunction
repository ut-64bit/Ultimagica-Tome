#> asset:object/proj.holy_spire_wave_runner/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_6 const

execute if score #t_Interval _ matches 0 unless block ~ ~-1 ~ #lib:no_collision_simple run function asset:object/proj.holy_spire_wave_runner/recursive/place

scoreboard players reset #t_Interval _
