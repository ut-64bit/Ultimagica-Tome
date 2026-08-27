#> asset_manager:effect/call_method/
# Objectと同じ規則で、現在のEffectメソッドを呼び出す。

function asset_manager:effect/call_method/run_method.m with storage asset:context
execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/call_method/call_super_methods/
