#> asset:object/proj.crystal_wave_runner/place/
#
# 地表にクリスタルウェーブを設置する
#

execute store result storage asset:temp X float 0.2 run random value -1..1
function asset:object/proj.crystal_wave_runner/place/macro with storage asset:temp
data remove storage asset:temp X
