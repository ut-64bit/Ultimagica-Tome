#> player_manager:effect/operation/clear_group/match.m
# 現在のEffectが指定グループに属する場合だけremoveを呼び出す。

$execute if data storage effect:context Current{Groups:["$(Group)"]} run data modify storage effect:context Reason set value "group_cleared"
$execute if data storage effect:context Current{Groups:["$(Group)"]} run function player_manager:effect/dispatch {Event:"remove"}
$execute unless data storage effect:context Current{Groups:["$(Group)"]} run data modify storage effect:context Next append from storage effect:context Current
data remove storage effect:context Reason
