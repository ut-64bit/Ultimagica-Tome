#> lib:entity_id/attach_tag.m
#
# EntityIDのエンティティにタグを付与する
#
# @input
#	score $EntityID lib
#	macro Tag : string
#
# @lib

# validate
	execute unless score $EntityID lib matches -2147483648..2147483647 run return fail

# タグを付与する
	$execute as @e[scores={EntityID=-2147483648..2147483647},distance=..1000] if score @s EntityID = $EntityID lib run tag @s add $(Tag)
