#> player_manager:effect/operation/give/reapply/replace

data modify storage effect:context Reason set value "replaced"
function player_manager:effect/dispatch {Event:"remove"}
data remove storage effect:context Reason
function player_manager:effect/operation/give/new
