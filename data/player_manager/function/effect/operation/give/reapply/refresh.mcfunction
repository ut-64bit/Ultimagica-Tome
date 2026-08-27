#> player_manager:effect/operation/give/reapply/refresh
# 既存Effectの時間とFieldを新しい付与内容で更新する。

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
