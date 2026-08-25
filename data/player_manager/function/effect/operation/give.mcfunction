#> player_manager:effect/operation/give

data modify storage effect:context Request set from storage effect:context Operation.Request
function player_manager:effect/operation/give/take_existing.m with storage effect:context Request
execute if data storage effect:context Current.ID run function player_manager:effect/operation/give/reapply.m with storage effect:context Request
execute unless data storage effect:context Current.ID run function player_manager:effect/operation/give/new
data remove storage effect:context Request
data remove storage effect:context Current
return 1
