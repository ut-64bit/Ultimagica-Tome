#> asset:effect/_extends/
# Objectのasset:object/_extends/と同じ継承登録処理。

data modify storage api: in.AssetID set from storage asset:context id
function api:registry/please
data modify storage registry: _[-4][-4][-4][-4][-4][-4][-4][-4].Effect.Extends set from storage asset:effect Extends

function asset_manager:common/id/stash
data modify storage asset:effect CopiedExtends append value []
data modify storage asset:effect CopiedExtends[-1] set from storage asset:effect Extends
data remove storage asset:effect Extends
execute if data storage asset:effect CopiedExtends[-1][0] run function asset:effect/_extends/foreach
data remove storage asset:effect CopiedExtends[-1]
data remove storage asset:effect Extends
function asset_manager:common/id/pop
