#> player_manager:effect/operation/give/reapply/refresh

data modify storage effect:context Current.Duration set from storage effect:context Definition.DefaultDuration
execute if data storage effect:context Request.Duration run data modify storage effect:context Current.Duration set from storage effect:context Request.Duration
data modify storage effect:context Current.Age set value 0
execute if data storage effect:context Request.Data run data modify storage effect:context Current.Data merge from storage effect:context Request.Data
execute if data storage effect:context Request.Source run data modify storage effect:context Current.Source set from storage effect:context Request.Source

function player_manager:effect/dispatch {Event:"reapply"}
function player_manager:effect/operation/give/finalize
