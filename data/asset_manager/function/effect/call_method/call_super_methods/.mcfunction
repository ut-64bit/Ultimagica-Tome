#> asset_manager:effect/call_method/call_super_methods/

data modify storage api: in.AssetID set from storage asset:context id
function api:registry/please

function asset_manager:common/id/stash
data modify storage asset:effect CopiedExtends append value []
data modify storage asset:effect CopiedExtends[-1] set from storage registry: _[-4][-4][-4][-4][-4][-4][-4][-4].Effect.Extends
execute if data storage asset:effect CopiedExtends[-1][0] run function asset_manager:effect/call_method/call_super_methods/foreach
data remove storage asset:effect CopiedExtends[-1]
function asset_manager:common/id/pop
