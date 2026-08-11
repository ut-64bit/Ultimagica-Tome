#> asset:object/abstract.ground_wave_runner/tick/start
#

# 速度からこのtickの移動回数を取得する
	data modify storage asset:temp MoveCount set from storage asset:context this.Speed

# 移動を開始する
	execute unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} at @s run function asset:object/abstract.ground_wave_runner/tick/step.m with storage asset:context this

# 後始末
	data remove storage asset:temp MoveCount
