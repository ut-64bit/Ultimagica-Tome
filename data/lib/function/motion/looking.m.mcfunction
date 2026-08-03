#> lib:motion/looking.m
#
# 向いている方向に力を加える
#
# @input macro Power
# @lib

# Power
	$data modify storage lib:temp Power set value $(Power)

# 力を加える
	execute store result score $strength hb.Motion run data get storage lib:temp Power 10000
	function p_motion:main/looking

# あとしまつ
	data remove storage lib:temp Power
