#> asset:object/proj.gravity_bump_runner/place/
#
# 地表にグラビティバンプを設置する
#

execute store result storage asset:temp X float 0.1 run random value -15..15
execute store result storage asset:temp Z float 0.1 run random value -15..15
function asset:object/proj.gravity_bump_runner/place/macro with storage asset:temp
data remove storage asset:temp X
data remove storage asset:temp Z
