#> player_manager:effect/operation/give/reapply/replace
# 既存Effectをremoveで解除してから新しいEffectへ置き換える。

data modify storage effect:context Reason set value "replaced"
function player_manager:effect/dispatch {Event:"remove"}
data remove storage effect:context Reason
function player_manager:effect/operation/give/new
