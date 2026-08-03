#> asset_manager:object/init/
# initを呼び出す

# init
	function asset_manager:object/init/init.m with storage asset:context

# super.init
	execute unless data storage asset:object {Implement:true} run function asset_manager:object/init/call_super_methods/
