#> asset:object/proj.magic_bullet_charged/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_32 const

# 演出
	particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	particle dust{color:16730367,scale:1.3} ^ ^ ^ 0.05 0.05 0.05 0 2 force
	particle dust_color_transition{from_color:16730367,to_color:3211313,scale:1.3} ^ ^ ^0.125 0.05 0.05 0.05 0 2 force
	execute if score #t_Interval _ matches 0 run function api:object/summon.m {ID:"particle.magic_bullet_shock_wave"}

scoreboard players reset #t_Interval _
