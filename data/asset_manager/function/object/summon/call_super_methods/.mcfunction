#> asset_manager:object/summon/call_super_methods/
#

# IDからレジストリを呼び出す
	data modify storage api: in.AssetID set from storage asset:context id
	function api:registry/please

# idを退避させる
	function asset_manager:common/id/stash

# 親クラスを取得する
	data modify storage asset:object CopiedExtends append value []
	data modify storage asset:object CopiedExtends[-1] set from storage registry: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends

# 親クラスのsummon呼び出し
	execute if data storage asset:object CopiedExtends[-1][0] run function asset_manager:object/summon/call_super_methods/foreach

# リセット
	data remove storage asset:object CopiedExtends[-1]

# 退避させたidを戻す
	function asset_manager:common/id/pop
