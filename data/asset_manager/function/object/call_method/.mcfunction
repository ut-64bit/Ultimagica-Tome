#> asset_manager:object/call_method/
# methodを呼び出す

# method
	function asset_manager:object/call_method/run_method.m with storage asset:context

# super.method
	execute unless data storage asset:object {Implement:true} run function asset_manager:object/call_method/call_super_methods/
