#> asset:object/abstract.ground_wave_runner/surface/move_to_top.m
#
# 最大上昇距離より0.25ブロック高い位置へ移動する
#

$execute at @s run tp @s ~ ~$(MaxRiseDistance) ~
execute at @s run tp @s ~ ~0.25 ~
