#> asset:object/proj.thunder_spire/tick/state_hit_idle
#

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.ExplosionDelay int 0.9999999999 run data get storage asset:context this.ExplosionDelay
	execute if data storage asset:context this{ExplosionDelay:0} run function api:common/auto_kill

# 演出
	execute if predicate lib:random_chance/30 run particle dust{color:16775936,scale:0.7} ^ ^ ^ 0.1 0.1 0.1 0 1 normal
	execute if predicate lib:random_chance/30 run particle dust{color:16775936,scale:0.7} ^ ^ ^-0.4 0.1 0.1 0.1 0 1 normal
	execute if predicate lib:random_chance/30 run particle dust{color:16775936,scale:0.7} ^ ^ ^0.4 0.1 0.1 0.1 0 1 normal
	execute if predicate lib:random_chance/50 run particle electric_spark ^ ^ ^ 0.1 0.1 0.1 0 1 normal
	execute if predicate lib:random_chance/50 run particle electric_spark ^ ^ ^-0.4 0.1 0.1 0.1 0 1 normal
	execute if predicate lib:random_chance/50 run particle electric_spark ^ ^ ^0.4 0.1 0.1 0.1 0 1 normal
	execute if data storage asset:context this{ExplosionDelay:1} run particle flash{color:-1} ~ ~ ~ 0 0 0 0 1 force
