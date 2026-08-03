#> asset:object/proj.water_rain_rain/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 演出
	# particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	execute if predicate lib:random_chance/40 run particle dust{color:4773119,scale:0.5} ^0.00000 ^-1.0 ^ 0 0 0 0 1 normal
	execute if predicate lib:random_chance/40 run particle dust{color:3481599,scale:0.5} ^0.86603 ^0.50 ^ 0 0 0 0 1 normal
	execute if predicate lib:random_chance/40 run particle dust{color:3481599,scale:0.5} ^-.86603 ^0.50 ^ 0 0 0 0 1 force
	execute if predicate lib:random_chance/40 run particle dust{color:4773119,scale:0.5} ^0.00000 ^-1.0 ^0.25 0 0 0 0 1 normal
	execute if predicate lib:random_chance/40 run particle dust{color:3481599,scale:0.5} ^0.86603 ^0.50 ^0.25 0 0 0 0 1 normal
	execute if predicate lib:random_chance/40 run particle dust{color:3481599,scale:0.5} ^-.86603 ^0.50 ^0.25 0 0 0 0 1 force
