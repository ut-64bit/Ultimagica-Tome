#> asset:object/particle.thunder_spire_trail/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# transformationを初期化する
	data modify storage asset:temp transformation set value { left_rotation:{ axis:[0,0,1], angle:0 }, right_rotation:{ axis:[0,1,0], angle:0 }, scale:[0,0,0] }

	execute store result storage asset:temp transformation.left_rotation.angle float 0.01 run random value 1..314
	execute store result storage asset:temp transformation.right_rotation.angle float 0.01 run random value 1..314

	execute store result storage asset:temp transformation.scale[0] float 0.01 run random value 30..80
	data modify storage asset:temp transformation.scale[1] set from storage asset:temp transformation.scale[0]
	data modify storage asset:temp transformation.scale[2] set from storage asset:temp transformation.scale[0]

	data modify entity @s transformation merge from storage asset:temp transformation
	data remove storage asset:temp transformation
