#> asset:object/abstract.ground_wave_runner/tick/step.m
#

# 水平方向へ1ステップ進む
	$execute at @s run tp @s ^ ^ ^$(MovePerStep) ~ 0

# 新しい位置の地表を探す
	execute at @s run function asset:object/abstract.ground_wave_runner/surface/find

# 地表が見つかった場合だけ攻撃を進める
	execute if data storage asset:context {GroundSurfaceFound:true} run function asset:object/abstract.ground_wave_runner/tick/step_success

# 地表が途切れた場合や高すぎる壁に当たった場合は終了する
	execute unless data storage asset:context {GroundSurfaceFound:true} run function api:common/auto_kill
	data remove storage asset:context GroundSurfaceFound

# このtickの残り移動回数を減らす
	execute store result storage asset:temp MoveCount int 0.9999999999 run data get storage asset:temp MoveCount

# 次のステップへ進む
	execute if entity @s[tag=!KillFlag] unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} at @s run function asset:object/abstract.ground_wave_runner/tick/step.m with storage asset:context this
