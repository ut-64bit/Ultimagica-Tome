#> player_manager:effect/operation/remove/foreach

data modify storage effect:context Current set from storage effect:context Queue[0]
data remove storage effect:context Queue[0]
function player_manager:effect/operation/remove/match.m with storage effect:context Operation.Request
data remove storage effect:context Current
execute if data storage effect:context Queue[0] run function player_manager:effect/operation/remove/foreach
