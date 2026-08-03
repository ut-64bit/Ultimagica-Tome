#> lib:entity_id/get
#
# EntityIDを取得する
#
# @output
#	score $EntityID lib
#
# @writes
#	score @s EntityID
#
# @lib

# IDを持っていなければ割り当てる
	execute unless predicate asset:valid_entity_id run function lib:entity_id/core/allocate_id

# 出力
	return run scoreboard players operation $EntityID lib = @s EntityID
