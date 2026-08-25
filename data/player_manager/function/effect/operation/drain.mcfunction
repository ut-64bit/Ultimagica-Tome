#> player_manager:effect/operation/drain
# 保留中のEffect操作をキューの先頭から順番に実行する。

data modify storage effect:context Operation set from storage effect:runtime Operations[0]
data remove storage effect:runtime Operations[0]
function player_manager:effect/operation/run.m with storage effect:context Operation
data remove storage effect:context Operation
execute if data storage effect:runtime Operations[0] run function player_manager:effect/operation/drain
