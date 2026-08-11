#> asset:object/abstract.ground_wave_runner/surface/find
#
# 現在位置を基準に地表を探す
# MaxRiseDistanceとMaxDropDistanceの範囲で追従する
#

data remove storage asset:context GroundSurfaceFound
data remove storage asset:context GroundSurfaceProbeDone

# 設定された上下距離を0.25ブロック単位の探索回数へ変換する
	execute store result score #t_GroundSurfaceRise _ run data get storage asset:context this.MaxRiseDistance 4
	execute store result score #t_GroundSurfaceDrop _ run data get storage asset:context this.MaxDropDistance 4
	scoreboard players operation #t_GroundSurfaceProbe _ = #t_GroundSurfaceRise _
	scoreboard players operation #t_GroundSurfaceProbe _ += #t_GroundSurfaceDrop _
	scoreboard players add #t_GroundSurfaceProbe _ 3

# 最大上昇距離より0.25ブロック高い位置から下向きに探索する
	function asset:object/abstract.ground_wave_runner/surface/move_to_top.m with storage asset:context this
	execute at @s run function asset:object/abstract.ground_wave_runner/surface/scan

# 後始末
	scoreboard players reset #t_GroundSurfaceProbe _
	scoreboard players reset #t_GroundSurfaceRise _
	scoreboard players reset #t_GroundSurfaceDrop _
	data remove storage asset:context GroundSurfaceProbeDone
