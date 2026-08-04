#> asset:object/proj.holy_spire_wave/init/
#
# 初期化処理
#

function asset:object/super.init

tp @s ~ ~ ~ ~ 0

# 状態を初期化する
	data modify storage asset:context this.State set value "idle"
	execute if data storage asset:context this.Delay unless data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "delay"

# left_rotationを初期化する
	data modify storage asset:temp left_rotation set value { axis:[0,0,1], angle:0 }
	execute store result storage asset:temp left_rotation.angle float 0.01 run random value -30..30
	data modify entity @s transformation.left_rotation set from storage asset:temp left_rotation
	data remove storage asset:temp left_rotation
