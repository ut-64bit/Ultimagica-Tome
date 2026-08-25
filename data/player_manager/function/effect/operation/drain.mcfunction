#> player_manager:effect/operation/drain
#
# 操作中にcallbackから追加された操作も、同じキューの末尾で処理する。

data modify storage effect:context Operation set from storage effect:runtime Operations[0]
data remove storage effect:runtime Operations[0]
function player_manager:effect/operation/run.m with storage effect:context Operation
data remove storage effect:context Operation

execute if data storage effect:runtime Operations[0] run function player_manager:effect/operation/drain
