#> asset:object/proj.water_rain/destroy/ray
#

# ブロック
	execute unless block ~ ~-1 ~ #lib:no_collision_simple run return fail

# 高さを測る
	scoreboard players add #t_Height _ 1

# 再帰する
	execute if entity @s[distance=..10] positioned ~ ~-1 ~ run return run function asset:object/proj.water_rain/destroy/ray
