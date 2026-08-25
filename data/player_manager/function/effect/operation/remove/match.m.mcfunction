#> player_manager:effect/operation/remove/match.m
# 現在のEffectが指定IDと一致する場合だけremoveを呼び出す。

$execute if data storage effect:context Current{ID:"$(ID)"} run data modify storage effect:context Reason set value "removed"
$execute if data storage effect:context Current{ID:"$(ID)"} run function player_manager:effect/dispatch {Event:"remove"}
$execute unless data storage effect:context Current{ID:"$(ID)"} run data modify storage effect:context Next append from storage effect:context Current
data remove storage effect:context Reason
