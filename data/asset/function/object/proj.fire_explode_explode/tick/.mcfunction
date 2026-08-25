#> asset:object/object.fire_explode_explode/tick/
#
# 毎tick呼び出されるメソッド
#

scoreboard players add @s General.Tick 1
execute if score @s General.Tick matches ..20 run rotate @s ~10 ~
execute if score @s General.Tick matches 21..40 run rotate @s ~20 ~
execute if score @s General.Tick matches 41..50 run rotate @s ~40 ~

# 発射者を取得する
	function asset:object/interface.attackable/get_owner

# パぁ！
execute if score @s General.Tick matches 2 run data merge entity @s { transformation:{ scale:[6,6,6] }, interpolation_duration:29, start_interpolation:0 }
# 判定
execute if score @s General.Tick matches 1 run function asset:object/proj.fire_explode_explode/tick/explode_1
execute if score @s General.Tick matches 10 run function asset:object/proj.fire_explode_explode/tick/explode_1
execute if score @s General.Tick matches 20 run function asset:object/proj.fire_explode_explode/tick/explode_2
execute if score @s General.Tick matches 30 run function asset:object/proj.fire_explode_explode/tick/explode_2
execute if score @s General.Tick matches 40 run function asset:object/proj.fire_explode_explode/tick/explode_3
# 閉じる
execute if score @s General.Tick matches 40 run data merge entity @s { transformation:{ scale:[0,0,0] }, interpolation_duration:10, start_interpolation:0 }

# 演出
	execute if score @s General.Tick matches ..40 run function asset:object/proj.fire_explode_explode/tick/particle
	execute if score @s General.Tick matches 50 run particle large_smoke ~ ~ ~ 0 0 0 0.1 10 force
	execute if score @s General.Tick matches 50 run playsound block.fire.extinguish player @a ~ ~ ~ 1 0.5

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner

execute if score @s General.Tick matches 50.. run function api:common/auto_kill
