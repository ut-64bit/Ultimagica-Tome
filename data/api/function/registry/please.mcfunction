#> api:registry/please
#
# IDからレジストリを呼び出す
#
# @input storage api: in.AssetID
# @api

# validate
	execute unless data storage api: in.AssetID run return fail

# IDに変化があるかどうか確認
	execute store success storage registry: update byte 1 run data modify storage registry: last_id set from storage api: in.AssetID

# アドレスを割り当て・取得する
	execute if data storage registry: {update:true} run function api:registry/core/allocate.m with storage api: in
	execute unless data storage registry: {update:true} store result score $Address _ run data get storage registry: last_address

# レジストリを提供する
	execute if data storage registry: {update:true} run function asset_manager:registry/provide

# リセット
	data remove storage api: in.AssetID
