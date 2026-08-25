#> player_manager:effect/operation/clear
# 全Effectのremoveを呼び出してEffect一覧を空にする。

execute unless data storage player:context this.Effects[0] run return 0
data modify storage effect:context Queue set from storage player:context this.Effects
function player_manager:effect/operation/clear/foreach
data modify storage player:context this.Effects set value []
data remove storage effect:context Queue
data remove storage effect:context Current
return 1
