#> asset:object/proj.water_ray/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 演出
	execute if predicate lib:random_chance/10 run particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	# particle bubble ^ ^ ^ 0 0 0 0 1 normal
	particle dust{color:3481599,scale:0.8} ^ ^ ^ 0 0 0 0 1 force
	particle dust{color:4773119,scale:0.4} ^ ^ ^ 0.1 0.1 0.1 0 1 force
