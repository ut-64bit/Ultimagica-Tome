#> asset:object/proj.gravity_flying_debris/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1


# 演出
	execute if predicate lib:random_chance/25 run particle dust{color:6162526,scale:0.5} ^ ^ ^ 0 0 0 0 1 force
	execute if predicate lib:random_chance/25 run particle block{block_state:{Name:"pointed_dripstone"}} ~ ~ ~ 0.1 0.1 0.1 0 1 normal
	# particle dust_color_transition{from_color:5636095,to_color:7358719,scale:0.7} ^ ^ ^ 0.15 0.15 0.15 0 2 force

scoreboard players reset #t_Interval _
