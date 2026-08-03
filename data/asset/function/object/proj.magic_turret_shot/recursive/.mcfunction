#> asset:object/proj.magic_turret_shot/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 演出
	execute if predicate lib:random_chance/30 run particle enchant ^ ^ ^ 0.15 0.15 0.15 0 1 normal
	particle trail{color:16730367,duration:1,target:[0,1000,0]} ^ ^ ^ 0 0 0 0 1 force
	particle trail{color:16730367,duration:1,target:[0,1000,0]} ^ ^ ^0.125 0 0 0 0 1 force
	particle dust_color_transition{from_color:16730367,to_color:3211313,scale:0.5} ^ ^ ^ 0 0 0 0 1 force
