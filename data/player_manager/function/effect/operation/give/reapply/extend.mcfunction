#> player_manager:effect/operation/give/reapply/extend

execute store result score #EffectDuration _ run data get storage effect:context Current.Duration
execute store result score #EffectGrantDuration _ run data get storage effect:context Definition.DefaultDuration
execute if data storage effect:context Request.Duration store result score #EffectGrantDuration _ run data get storage effect:context Request.Duration

execute unless score #EffectDuration _ matches -1 unless score #EffectGrantDuration _ matches -1 run scoreboard players operation #EffectDuration _ += #EffectGrantDuration _
execute if score #EffectGrantDuration _ matches -1 run scoreboard players set #EffectDuration _ -1
execute store result storage effect:context Current.Duration int 1 run scoreboard players get #EffectDuration _

execute if data storage effect:context Request.Data run data modify storage effect:context Current.Data merge from storage effect:context Request.Data
execute if data storage effect:context Request.Source run data modify storage effect:context Current.Source set from storage effect:context Request.Source

function player_manager:effect/dispatch {Event:"reapply"}
function player_manager:effect/operation/give/finalize

scoreboard players reset #EffectDuration _
scoreboard players reset #EffectGrantDuration _
