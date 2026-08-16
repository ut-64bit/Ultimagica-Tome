#> asset:object/proj.fire_beam_base/tick/shot/
#

# 位置をずらして発射する
	execute store result storage asset:temp X float 0.1 run random value -2..2
	execute store result storage asset:temp Y float 0.1 run random value -2..2
	function asset:object/proj.fire_beam_base/tick/shot/spread with storage asset:temp
	data remove storage asset:temp X
	data remove storage asset:temp Y
