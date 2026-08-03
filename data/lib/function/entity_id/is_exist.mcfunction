#> lib:entity_id/is_exist
#
# EntityIDのエンティティが存在するかどうか
#
# @input
#	score $EntityID lib
#
# @output
#	storage lib: out.IsExit
#		: bool
#
# @lib

# validate
	execute unless score $EntityID lib matches -2147483648..2147483647 run return fail

# リセット
	data modify storage lib: out.IsExit set value false

# 特定する
	execute as @e[scores={EntityID=-2147483648..2147483647},distance=..1000] if score @s EntityID = $EntityID lib run data modify storage lib: out.IsExit set value true

# 出力
	return run data get storage lib: out.IsExit
