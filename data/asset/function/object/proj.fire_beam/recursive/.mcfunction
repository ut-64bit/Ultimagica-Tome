#> asset:object/proj.fire_beam/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 演出
	particle dust{color:16711680,scale:0.8} ^ ^ ^ 0.1 0.1 0.1 0 1 force
	execute if predicate lib:random_chance/30 run particle dust{color:4325376,scale:1.0} ^ ^ ^ 0.1 0.1 0.1 0 1 normal
