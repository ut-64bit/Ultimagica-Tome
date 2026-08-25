#> player_manager:effect/operation/give/reapply/stack
# スタック数を上限まで増やし、付与時間とFieldを更新する。

execute store result score #EffectStacks _ run data get storage effect:context Current.Stacks
execute store result score #EffectMaxStacks _ run data get storage effect:context Request.MaxStacks
scoreboard players add #EffectStacks _ 1
scoreboard players operation #EffectStacks _ < #EffectMaxStacks _
execute store result storage effect:context Current.Stacks int 1 run scoreboard players get #EffectStacks _

data modify storage effect:context Current.Duration set from storage effect:context Request.Duration
data modify storage effect:context Current.Age set value 0
data modify storage effect:context Current.Groups set from storage effect:context Request.Groups
data modify storage effect:context Current.Reapply set from storage effect:context Request.Reapply
data modify storage effect:context Current.MaxStacks set from storage effect:context Request.MaxStacks
data modify storage effect:context Current.Field set from storage effect:context Request.Field
data modify storage effect:context Current.Reapplied set value true
function player_manager:effect/dispatch {Event:"given"}
data remove storage effect:context Current.Reapplied
function player_manager:effect/operation/give/finalize

scoreboard players reset #EffectStacks _
scoreboard players reset #EffectMaxStacks _
