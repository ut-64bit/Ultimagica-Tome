#> player_manager:effect/tick
# プレイヤーが持つ全Effectを1tick分更新する。
# @within player:context this

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
execute if data storage effect:runtime Operations[0] run function player_manager:effect/operation/drain
data remove storage effect:runtime Busy
return 1
