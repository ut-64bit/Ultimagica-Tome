#> lib:motion/core/reset
#

# 慣性を消す
	tp @s 0.0 0.0 0.0
	tp @s ~ ~ ~

# force_source をすべて消す
	scoreboard players operation #t_EntityID lib = @s EntityID
	execute as @e[tag=Object.force_source,distance=..1000] if score @s OwnerID = #t_EntityID lib run function api:common/auto_kill
	scoreboard players reset #t_EntityID lib
