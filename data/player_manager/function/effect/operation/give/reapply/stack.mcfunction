#> player_manager:effect/operation/give/reapply/stack

execute store result score #EffectStacks _ run data get storage effect:context Current.Stacks
execute store result score #EffectMaxStacks _ run data get storage effect:context Definition.MaxStacks
scoreboard players add #EffectStacks _ 1
scoreboard players operation #EffectStacks _ < #EffectMaxStacks _
execute store result storage effect:context Current.Stacks int 1 run scoreboard players get #EffectStacks _

data modify storage effect:context Current.Duration set from storage effect:context Definition.DefaultDuration
execute if data storage effect:context Request.Duration run data modify storage effect:context Current.Duration set from storage effect:context Request.Duration
data modify storage effect:context Current.Age set value 0
execute if data storage effect:context Request.Data run data modify storage effect:context Current.Data merge from storage effect:context Request.Data
execute if data storage effect:context Request.Source run data modify storage effect:context Current.Source set from storage effect:context Request.Source

function player_manager:effect/dispatch {Event:"reapply"}
function player_manager:effect/operation/give/finalize

scoreboard players reset #EffectStacks _
scoreboard players reset #EffectMaxStacks _
