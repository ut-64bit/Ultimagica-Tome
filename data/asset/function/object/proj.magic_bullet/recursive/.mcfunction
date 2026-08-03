#> asset:object/proj.magic_bullet/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_4 const

# 演出
	particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	particle dust{color:16730367,scale:0.7} ^ ^ ^ 0 0 0 0 2 force
	particle dust_color_transition{from_color:16730367,to_color:3211313,scale:0.7} ^ ^ ^0.125 0 0 0 0 2 force
	execute if score #t_Interval _ matches 0 run particle witch ^ ^ ^ 0 0.05 0 5 1 normal

scoreboard players reset #t_Interval _
