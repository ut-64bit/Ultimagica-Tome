#> player_manager:effect/dispatch
# 引数: {Event:"apply|reapply|tick|remove"}
#
# 登録済みエフェクトは4つのcallbackを必ず実装する。

data modify storage effect:context Dispatch.ID set from storage effect:context Current.ID
$data modify storage effect:context Dispatch.Event set value "$(Event)"
function player_manager:effect/dispatch.m with storage effect:context Dispatch
data remove storage effect:context Dispatch
