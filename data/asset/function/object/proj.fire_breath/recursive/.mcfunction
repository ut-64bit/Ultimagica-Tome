#> asset:object/proj.fire_breath/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 少しずつ減速する
	# execute if data storage asset:context this{RemainingRange:8} run data modify storage asset:context this.Speed set value 1

# 地面との衝突
	execute positioned ~ ~-0.5 ~ run function asset:object/call.m {method:"detect_hit_block"}
	execute if data storage asset:context {IsHitBlock:true} run rotate @s ~ -3
	data remove storage asset:context IsHitBlock

# 演出
	# execute if predicate lib:random_chance/40 run particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	particle dust{color:16711680,scale:0.5} ^ ^ ^ 0.2 0.2 0.2 0 1 force
	particle dust_color_transition{from_color:16721408,to_color:4456448,scale:0.5} ^ ^ ^0.25 0.2 0.2 0.2 0 1 force
	execute if predicate lib:random_chance/20 run particle small_flame ^ ^ ^ 0.0 0.0 0.0 0.03 1 normal
	execute if predicate lib:random_chance/20 run particle flame ^ ^ ^0.25 ^ ^ ^1000000 0.00000005 0 normal
