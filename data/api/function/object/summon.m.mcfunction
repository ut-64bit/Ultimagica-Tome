#> api:object/summon.m
#
# IDからオブジェクトを召喚する
#
# @input
#	macro ID : string
#	storage api: in.FieldOverride
#		: ?T
#
# @api

# id
	$data modify storage api: in.ID set value $(ID)

# 召喚する
	function api:object/core/summon

# 引数のリセット
	data remove storage api: in.ID
