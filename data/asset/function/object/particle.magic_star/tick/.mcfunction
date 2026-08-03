#> asset:object/particle.magic_star/tick/
#
# 毎tick呼び出されるメソッド
#

scoreboard players add @s General.Tick 1

execute if score @s General.Tick matches 3 run data modify entity @s text_opacity set value 127
execute if score @s General.Tick matches 4 run data merge entity @s { transformation:{ scale:[0.7,0.7,0.7] }, text_opacity:0, interpolation_duration:6, start_interpolation:0 }

# 時間になったら削除する
	execute if score @s General.Tick matches 10.. run function api:common/auto_kill
