#> asset:object/call.m
#
# 任意のメソッドを呼び出す
#

# idを退避させる
	function asset_manager:common/id/stash
# methodを退避させる
	function asset_manager:common/method/stash

# originIDを取得する
	data modify storage asset:context id set from storage asset:context originID
# methodを取得する
	$data modify storage asset:context method set value $(method)

# メソッドを呼び出す
	function asset_manager:object/call_method/

# 退避させたidを戻す
	function asset_manager:common/id/pop
# 退避させたmethodを戻す
	function asset_manager:common/method/pop
