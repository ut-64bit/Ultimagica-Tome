#> asset_manager:object/trigger/destroy
# destroyトリガー

# contextを退避する
	function asset_manager:common/id/stash
	function asset_manager:common/origin_id/stash
	function asset_manager:common/this/stash

# OhMyDatからidとフィールドを取得する
	function oh_my_dat:please
	data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.ID
	data modify storage asset:context originID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.ID
	data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Field

# destroy処理をする
	function asset_manager:object/destroy/

# キルする
	kill @s

# 退避したcontextを戻す
	function asset_manager:common/id/pop
	function asset_manager:common/origin_id/pop
	function asset_manager:common/this/pop
