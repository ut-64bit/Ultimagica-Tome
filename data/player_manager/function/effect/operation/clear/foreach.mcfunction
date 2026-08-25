#> player_manager:effect/operation/clear/foreach

data modify storage effect:context Current set from storage effect:context Queue[0]
data remove storage effect:context Queue[0]
data modify storage effect:context Reason set value "cleared"
function player_manager:effect/dispatch {Event:"remove"}
data remove storage effect:context Reason
data remove storage effect:context Current
execute if data storage effect:context Queue[0] run function player_manager:effect/operation/clear/foreach
