#> asset:object/proj.thunder_spire/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_4 const

# 演出
	particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	particle dust{color:12929279,scale:0.7} ^ ^ ^ 0.1 0.1 0.1 0 1 force
	execute if predicate lib:random_chance/50 run particle electric_spark ^ ^ ^ 0.1 0.1 0.1 0 1 normal
	execute if score #t_Interval _ matches 0 run function api:clear_in
	execute if score #t_Interval _ matches 0 run function api:object/summon.m {ID:"particle.thunder_spire_trail"}

scoreboard players reset #t_Interval _
