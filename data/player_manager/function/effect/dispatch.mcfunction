#> player_manager:effect/dispatch
# 現在処理中のEffectをasset:contextへ展開し、指定メソッドを呼び出す。
# 引数: {Event:"given|tick|end|remove"}

function asset_manager:common/id/stash
function asset_manager:common/origin_id/stash
function asset_manager:common/method/stash
function asset_manager:common/this/stash
function asset_manager:effect/common/asset_context/stash
function asset_manager:effect/common/context/stash

data modify storage asset:context id set from storage effect:context Current.ID
data modify storage asset:context originID set from storage effect:context Current.ID
$data modify storage asset:context method set value "$(Event)"
data modify storage asset:context this set from storage effect:context Current.Field

# Effect共通データはFieldへ混ぜず、asset:context直下へまとめる。
data modify storage asset:context Duration set from storage effect:context Current.Duration
data modify storage asset:context Age set from storage effect:context Current.Age
data modify storage asset:context Stacks set from storage effect:context Current.Stacks
data modify storage asset:context Groups set from storage effect:context Current.Groups
data modify storage asset:context Reapply set from storage effect:context Current.Reapply
data modify storage asset:context MaxStacks set from storage effect:context Current.MaxStacks
data modify storage asset:context Reason set from storage effect:context Reason
data modify storage asset:context Reapplied set from storage effect:context Current.Reapplied

function asset_manager:effect/call_method/

data modify storage effect:context Current.Field set from storage asset:context this
data modify storage effect:context Current.Duration set from storage asset:context Duration
data modify storage effect:context Current.Age set from storage asset:context Age
data modify storage effect:context Current.Stacks set from storage asset:context Stacks
data modify storage effect:context Current.Groups set from storage asset:context Groups
data modify storage effect:context Current.Reapply set from storage asset:context Reapply
data modify storage effect:context Current.MaxStacks set from storage asset:context MaxStacks

function asset_manager:effect/common/context/pop
function asset_manager:effect/common/asset_context/pop
function asset_manager:common/id/pop
function asset_manager:common/origin_id/pop
function asset_manager:common/method/pop
function asset_manager:common/this/pop
