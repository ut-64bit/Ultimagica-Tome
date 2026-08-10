#> asset:object/abstract.ground_wave_runner/surface/find
#
# 現在位置を基準に地表を探す
# 上方向は1ブロック、下方向は3ブロックまで追従する
#

data remove storage asset:context GroundSurfaceFound
data remove storage asset:context GroundSurfaceProbeDone

# 最大上昇量より0.25ブロック高い位置から下向きに探索する
	execute at @s run tp @s ~ ~1.25 ~
	scoreboard players set #t_GroundSurfaceProbe _ 18
	execute at @s run function asset:object/abstract.ground_wave_runner/surface/scan

# 後始末
	scoreboard players reset #t_GroundSurfaceProbe _
	data remove storage asset:context GroundSurfaceProbeDone
