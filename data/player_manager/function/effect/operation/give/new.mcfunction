#> player_manager:effect/operation/give/new

data modify storage effect:context Current set value {Age:0,Stacks:1,Data:{}}
data modify storage effect:context Current.ID set from storage effect:context Request.ID
data modify storage effect:context Current.Duration set from storage effect:context Definition.DefaultDuration
data modify storage effect:context Current.TickInterval set from storage effect:context Definition.TickInterval
data modify storage effect:context Current.Groups set from storage effect:context Definition.Groups
data modify storage effect:context Current.Data merge from storage effect:context Definition.DefaultData

execute if data storage effect:context Request.Duration run data modify storage effect:context Current.Duration set from storage effect:context Request.Duration
execute if data storage effect:context Request.Data run data modify storage effect:context Current.Data merge from storage effect:context Request.Data
execute if data storage effect:context Request.Source run data modify storage effect:context Current.Source set from storage effect:context Request.Source

function player_manager:effect/dispatch {Event:"apply"}
function player_manager:effect/operation/give/finalize
