#> asset:object/abstract.ground_wave_runner/surface/found
#
# 衝突位置の直上が空いていれば地表として確定する
#

data modify storage asset:context GroundSurfaceProbeDone set value true
execute at @s run tp @s ~ ~0.25 ~
execute at @s align xyz unless predicate lib:block_check/shaped run data modify storage asset:context GroundSurfaceFound set value true
