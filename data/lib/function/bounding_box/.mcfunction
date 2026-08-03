#> lib:bounding_box/
#
# 箱型の当たり判定
#
# @input
#	score $Size lib
#
# @lib


scoreboard players operation #t_Size lib = $Size lib
execute store result storage lib:temp Shift1 float 0.0005 run scoreboard players get #t_Size lib
scoreboard players remove #t_Size lib 1000
execute store result storage lib:temp Shift2 float 0.001 run scoreboard players get #t_Size lib

execute if score #t_Size lib matches 0.. run function lib:bounding_box/core/large.m with storage lib:temp
execute unless score #t_Size lib matches 0.. run function lib:bounding_box/core/small.m with storage lib:temp

# あとしまつ
	data remove storage lib:temp Shift1
	data remove storage lib:temp Shift2
	scoreboard players reset #t_Size lib
