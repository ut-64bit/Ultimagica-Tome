#> asset:effect/_extends/foreach

data modify storage asset:context id set from storage asset:effect CopiedExtends[-1][0]
function asset_manager:effect/give/register.m with storage asset:context
data remove storage asset:effect CopiedExtends[-1][0]
execute if data storage asset:effect CopiedExtends[-1][0] run function asset:effect/_extends/foreach
