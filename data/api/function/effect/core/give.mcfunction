#> api:effect/core/give
# Effectを登録し、抽象判定と付与データの構築を行う。
# @within player:context this

data modify storage api: out.EffectResult set value false

function asset_manager:common/id/stash
function asset_manager:common/origin_id/stash
function asset_manager:common/this/stash
function asset_manager:effect/common/context/stash

# 共通データの既定値。registerは必要な値だけ上書きできる。
data modify storage asset:effect Duration set value 1
data modify storage asset:effect Stacks set value 1
data modify storage asset:effect Groups set value []
data modify storage asset:effect Reapply set value "refresh"
data modify storage asset:effect MaxStacks set value 1
data modify storage asset:effect IsAbstract set value false
data modify storage asset:effect Field set value {}

data modify storage asset:context id set from storage api: in.ID
function asset_manager:effect/give/register.m with storage asset:context

execute if data storage asset:effect ID unless data storage asset:effect {IsAbstract:true} run function api:effect/core/give_valid
execute if data storage asset:effect {IsAbstract:true} run tellraw @s {text:"[ERROR:\"api:effect/give\"] 抽象Effectを直接付与しないでください",color:"dark_red"}

function asset_manager:effect/common/context/pop
function asset_manager:common/id/pop
function asset_manager:common/origin_id/pop
function asset_manager:common/this/pop

return run data get storage api: out.EffectResult
