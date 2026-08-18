#> asset:object/proj.elf_arrow/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

# 演出
	particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	particle dust{color:16777215,scale:1.2} ^ ^ ^0.25 0 0 0 0 1 force
	particle dust{color:10289072,scale:1.0} ^ ^ ^ 0 0 0 0 1 force
	execute if predicate lib:random_chance/25 run particle white_smoke ^ ^ ^ 0.1 0.1 0.1 0 1 normal
