#> lib:motion/looking
#
# 向いている方向に力を加える
#
# @input storage lib: in.Power
# @lib

# validate
	execute unless data storage lib: in.Power run return fail

# 力を加える
	execute store result score $strength hb.Motion run data get storage lib: in.Power 10000
	function p_motion:main/looking
