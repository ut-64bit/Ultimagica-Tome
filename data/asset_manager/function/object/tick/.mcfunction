#> asset_manager:object/tick/
# tickを呼び出す

# tick
	function asset_manager:object/tick/tick.m with storage asset:context

# super.tick
	execute unless data storage asset:object {Implement:true} run function asset_manager:object/tick/call_super_methods/
