#> asset:object/abstract.ground_wave_runner/tick/step_success
#

# 移動回数を数える
	scoreboard players add @s MoveCount 1

# 設置間隔に達したら派生クラスのplaceを呼び出す
	scoreboard players operation #t_GroundWaveInterval _ = @s MoveCount
	execute store result score #t_GroundWavePlaceInterval _ run data get storage asset:context this.PlaceInterval
	scoreboard players operation #t_GroundWaveInterval _ %= #t_GroundWavePlaceInterval _
	execute if score #t_GroundWaveInterval _ matches 0 run function asset:object/call.m {method:"place"}
	scoreboard players reset #t_GroundWaveInterval _
	scoreboard players reset #t_GroundWavePlaceInterval _

# 残りの移動回数を減らす
	execute store result storage asset:context this.RemainingRange int 0.9999999999 run data get storage asset:context this.RemainingRange
	execute if data storage asset:context this{RemainingRange:0} run function asset:object/call.m {method:"range_over"}
