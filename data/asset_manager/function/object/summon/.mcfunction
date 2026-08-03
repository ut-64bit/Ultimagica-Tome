#> asset_manager:object/summon/
# summonを呼び出す

# summon
	function asset_manager:object/summon/summon.m with storage asset:context

# super.summon
	execute unless data storage asset:object {Implement:true} run function asset_manager:object/summon/call_super_methods/
