#> asset:effect/call.m
# 引数: {method:"method_name"}
# Objectのasset:object/call.mと同じく、元のEffectに任意メソッドを呼ぶ。

function asset_manager:common/id/stash
function asset_manager:common/method/stash
data modify storage asset:context id set from storage asset:context originID
$data modify storage asset:context method set value "$(method)"
function asset_manager:effect/call_method/
function asset_manager:common/id/pop
function asset_manager:common/method/pop
