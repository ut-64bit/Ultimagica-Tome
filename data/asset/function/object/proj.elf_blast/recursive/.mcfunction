#> asset:object/proj.elf_blast/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

scoreboard players add @s MoveCount 1

scoreboard players operation #t_Interval _ = @s MoveCount
scoreboard players operation #t_Interval _ %= #c_8 const

# 演出
	# particle enchant ^ ^ ^ 0.5 0.5 0.5 0 1 normal
	particle dust{color:16777215,scale:1.5} ^ ^ ^ 0.5 0.5 0.5 0 1 normal
	particle dust{color:10289072,scale:1.5} ^ ^ ^ 0.5 0.5 0.5 0 1 normal

# 爆発
	execute if score #t_Interval _ matches 0 run function asset:object/proj.elf_blast/recursive/explode

scoreboard players reset #t_Interval _
