#> player_manager:effect/operation/give/new

data modify storage effect:context Current set value {ID:"",Duration:1,Age:0,Stacks:1,Groups:[],Reapply:"refresh",MaxStacks:1,Field:{}}
data modify storage effect:context Current.ID set from storage effect:context Request.ID
data modify storage effect:context Current.Duration set from storage effect:context Request.Duration
data modify storage effect:context Current.Stacks set from storage effect:context Request.Stacks
data modify storage effect:context Current.Groups set from storage effect:context Request.Groups
data modify storage effect:context Current.Reapply set from storage effect:context Request.Reapply
data modify storage effect:context Current.MaxStacks set from storage effect:context Request.MaxStacks
data modify storage effect:context Current.Field set from storage effect:context Request.Field

function player_manager:effect/dispatch {Event:"given"}
function player_manager:effect/operation/give/finalize
