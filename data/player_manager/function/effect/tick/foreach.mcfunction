#> player_manager:effect/tick/foreach
# Effectを1件更新し、継続・自己解除・期限切れを処理する。

data modify storage effect:context Current set from storage effect:context Queue[0]
data remove storage effect:context Queue[0]
data remove storage effect:context Current.Removed

function player_manager:effect/dispatch {Event:"tick"}

execute unless data storage effect:context Current{Removed:true} store result score #EffectAge _ run data get storage effect:context Current.Age
execute unless data storage effect:context Current{Removed:true} run scoreboard players add #EffectAge _ 1
execute unless data storage effect:context Current{Removed:true} store result storage effect:context Current.Age int 1 run scoreboard players get #EffectAge _

execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:-1} store result score #EffectDuration _ run data get storage effect:context Current.Duration
execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:-1} run scoreboard players remove #EffectDuration _ 1
execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:-1} store result storage effect:context Current.Duration int 1 run scoreboard players get #EffectDuration _

execute if data storage effect:context Current{Removed:true} run data modify storage effect:context Reason set value "self"
execute if data storage effect:context Current{Removed:true} run function player_manager:effect/dispatch {Event:"remove"}
execute unless data storage effect:context Current{Removed:true} if data storage effect:context Current{Duration:0} run data modify storage effect:context Reason set value "expired"
execute unless data storage effect:context Current{Removed:true} if data storage effect:context Current{Duration:0} run function player_manager:effect/dispatch {Event:"end"}

execute unless data storage effect:context Current{Removed:true} unless data storage effect:context Current{Duration:0} run data modify storage effect:context Next append from storage effect:context Current

data remove storage effect:context Reason
data remove storage effect:context Current
scoreboard players reset #EffectAge _
scoreboard players reset #EffectDuration _
execute if data storage effect:context Queue[0] run function player_manager:effect/tick/foreach
