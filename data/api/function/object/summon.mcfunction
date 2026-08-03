#> api:object/summon
#
# IDからオブジェクトを召喚する
# 複数一括で召喚する場合は api:object/summon.m の使用を推奨
#
# @input
#	storage api: in.ID
#		: string
#	storage api: in.FieldOverride
#		: ?T
#
# @api

# validate
	execute unless data storage api: in.ID run return fail

# 召喚する
	function api:object/core/summon

# 引数のリセット
	data remove storage api: in.ID
	data remove storage api: in.FieldOverride
