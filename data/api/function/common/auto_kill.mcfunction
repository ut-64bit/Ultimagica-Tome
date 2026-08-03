#> api:common/auto_kill
#
# いい感じにキルする
#
# @api

# 死体蹴り防止
	tag @s add death_check
	execute at @s unless entity @n[tag=death_check,distance=..0.01] run return fail
	tag @s remove death_check

# Objectの場合
	execute if entity @s[tag=AssetObject] at @s run return run function api:common/core/auto_kill_object

# その他の場合はキルする
	kill @s
