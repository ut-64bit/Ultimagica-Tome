#> asset:object/proj.elf_shot/main/
#
# 更新処理
#

scoreboard players add @s General.Tick 1

# 演出
	function lib:interval/ {Tick:4,Offset:1}
	execute if score $Interval _ matches 0 run playsound entity.breeze.slide neutral @a ~ ~ ~ 0.6 1
	execute if score @s General.Tick matches 2 run data merge entity @s {transformation:{scale:[1.3,1.3,1.7],left_rotation:{axis:[0,0,1],angle:4.186}},interpolation_duration:3,start_interpolation:0}
	execute if score @s General.Tick matches 2.. run function asset:object/proj.elf_shot/main/rotate
