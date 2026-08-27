#> asset:effect/_extends/foreach
# 親Effectを順番に登録し、継承した既定値を反映する。

data modify storage asset:context id set from storage asset:effect CopiedExtends[-1][0]
function asset_manager:effect/give/register.m with storage asset:context
data remove storage asset:effect CopiedExtends[-1][0]
execute if data storage asset:effect CopiedExtends[-1][0] run function asset:effect/_extends/foreach
