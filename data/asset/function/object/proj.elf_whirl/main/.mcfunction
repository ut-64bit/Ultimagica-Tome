#> asset:object/proj.elf_whirl/main/
#
# 更新処理
#

scoreboard players add @s General.Tick 1

scoreboard players operation #t_Interval _ = @s General.Tick
scoreboard players remove #t_Interval _ 1
scoreboard players operation #t_Interval _ %= #c_4 const

# 定期的にダメージを与える
	execute if score #t_Interval _ matches 0 run function asset:object/proj.elf_whirl/main/create_attack_data

# 演出
	execute if score #t_Interval _ matches 0 run playsound entity.breeze.slide neutral @a ~ ~ ~ 0.6 1

scoreboard players reset #t_Interval _

# 演出
	execute if score @s General.Tick matches 2 run data merge entity @s {transformation:{scale:[1.7,3,1.7],left_rotation:{axis:[0,1,0],angle:4.186}},interpolation_duration:3,start_interpolation:0}
	execute if score @s General.Tick matches 4.. run function asset:object/proj.elf_whirl/main/rotate
