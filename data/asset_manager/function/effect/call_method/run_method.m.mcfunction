#> asset_manager:effect/call_method/run_method.m
# 指定Effectのメソッドを呼び、実装の有無を記録する。

$function asset:effect/$(id)/$(method)/
$execute store success storage asset:effect Implement byte 1 run schedule function asset:effect/$(id)/$(method)/ 2147483647t
$schedule clear asset:effect/$(id)/$(method)/
