#> asset_manager:object/call_method/call_super_methods/foreach
#

# idを取得
	data modify storage asset:context id set from storage asset:object CopiedExtends[-1][0]

# super.method呼び出し
	function asset_manager:object/call_method/

# 先頭削除
	data remove storage asset:object CopiedExtends[-1][0]

# 要素があれば再帰
	execute if data storage asset:object CopiedExtends[-1][0] run function asset_manager:object/call_method/call_super_methods/foreach
