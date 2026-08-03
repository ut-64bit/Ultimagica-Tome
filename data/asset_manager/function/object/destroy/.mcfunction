#> asset_manager:object/destroy/
# destroyを呼び出す

# destroy
	function asset_manager:object/destroy/destroy.m with storage asset:context

# super.destroy
	execute unless data storage asset:object {Implement:true} run function asset_manager:object/destroy/call_super_methods/
