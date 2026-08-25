#> asset:object/proj.fire_shot/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 少しずつ減速する
	execute if data storage asset:context this{RemainingRange:40} run data modify storage asset:context this.Speed set value 3
	execute if data storage asset:context this{RemainingRange:30} run data modify storage asset:context this.Speed set value 2
	execute if data storage asset:context this{RemainingRange:20} run data modify storage asset:context this.Speed set value 1

# 演出
	execute if predicate lib:random_chance/30 run particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	execute if predicate lib:random_chance/30 run particle small_flame ^ ^ ^ 0 0 0 0.01 1 normal
	execute if predicate lib:random_chance/50 run particle dust_color_transition{from_color:16750848,to_color:16721408,scale:0.8} ^ ^ ^ 0 0 0 0 1 normal
	execute if predicate lib:random_chance/50 run particle dust_color_transition{from_color:16721408,to_color:4456448,scale:1.0} ^ ^ ^ 0.1 0.1 0.1 0 2 force

# 系統スキルの残留炎
	execute if predicate lib:random_chance/1 run function player:skill/school_fire_mastery/
