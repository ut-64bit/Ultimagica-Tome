#> asset_manager:effect/call_method/call_super_methods/foreach
# 親Effectのリストを先頭から処理し、現在のメソッドを呼び出す。

data modify storage asset:context id set from storage asset:effect CopiedExtends[-1][0]
function asset_manager:effect/call_method/
data remove storage asset:effect CopiedExtends[-1][0]
execute if data storage asset:effect CopiedExtends[-1][0] run function asset_manager:effect/call_method/call_super_methods/foreach
