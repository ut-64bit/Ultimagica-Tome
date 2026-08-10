#> world:game/player/teleport_to_last_death
#
# 死亡地点へ移動する。

execute unless data entity @s LastDeathLocation run return fail

data modify entity 0-0-0-0-0 Pos set from entity @s LastDeathLocation.pos
tp @s 0-0-0-0-0
tp 0-0-0-0-0 0.0 0.0 0.0
