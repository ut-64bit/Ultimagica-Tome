#> asset:object/abstract.ground_wave_runner/surface/scan
#
# 実際のブロック形状を使い、上から最初に接触する地表を探す
#

# 衝突形状を見つけたら、その直上を地表候補にする
	execute at @s align xyz if predicate lib:block_check/shaped run function asset:object/abstract.ground_wave_runner/surface/found

# まだ見つかっていなければ0.25ブロック下へ進む
	execute unless data storage asset:context {GroundSurfaceProbeDone:true} if score #t_GroundSurfaceProbe _ matches 1.. at @s run tp @s ~ ~-0.25 ~
	scoreboard players remove #t_GroundSurfaceProbe _ 1

# 探索範囲内を再帰する
	execute unless data storage asset:context {GroundSurfaceProbeDone:true} if score #t_GroundSurfaceProbe _ matches 1.. at @s run function asset:object/abstract.ground_wave_runner/surface/scan
