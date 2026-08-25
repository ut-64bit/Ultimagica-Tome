#> player_manager:effect/tick
#
# player:context this が読み込まれているプレイヤーの全エフェクトを更新する。

execute unless data storage player:context this.Effects run data modify storage player:context this.Effects set value []
execute unless data storage player:context this.Effects[0] run return 0

data modify storage effect:runtime Busy set value true
data modify storage effect:context Queue set from storage player:context this.Effects
data modify storage effect:context Next set value []

function player_manager:effect/tick/foreach

data modify storage player:context this.Effects set from storage effect:context Next
data remove storage effect:context Queue
data remove storage effect:context Next
data remove storage effect:context Current

# callback中に要求された付与・解除を、走査完了後に順番どおり反映する。
execute if data storage effect:runtime Operations[0] run function player_manager:effect/operation/drain
data remove storage effect:runtime Busy

return 1
