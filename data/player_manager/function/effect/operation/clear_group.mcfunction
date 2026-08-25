#> player_manager:effect/operation/clear_group
# 指定グループ以外のEffectを残し、該当Effectを解除する。

execute unless data storage player:context this.Effects[0] run return 0
data modify storage effect:context Queue set from storage player:context this.Effects
data modify storage effect:context Next set value []
function player_manager:effect/operation/clear_group/foreach
data modify storage player:context this.Effects set from storage effect:context Next
data remove storage effect:context Queue
data remove storage effect:context Next
data remove storage effect:context Current
return 1
