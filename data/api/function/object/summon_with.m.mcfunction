#> api:object/summon_with.m
#
# IDからオブジェクトを召喚する
#
# @api

# id
	$data modify storage api: in.ID set value $(ID)
	$data modify storage api: in.FieldOverride set value $(Field)

# 召喚する
	function api:object/core/summon

# 引数のリセット
	data remove storage api: in.ID
	data remove storage api: in.FieldOverride
