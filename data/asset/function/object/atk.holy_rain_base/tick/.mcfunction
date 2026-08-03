#> asset:object/atk.holy_rain_base/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

scoreboard players operation #t_Interval _ = @s General.Tick
scoreboard players remove #t_Interval _ 1
scoreboard players operation #t_Interval _ %= #c_3 const

# 発射
	execute if score #t_Interval _ matches 0 run rotate @s ~10 0
	execute if score #t_Interval _ matches 0 run function asset:object/atk.holy_rain_base/tick/shot

# 削除する
	execute if score @s General.Tick matches 9.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
