#> asset:object/atk.fire_shot_base/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

# 発射
	execute if score @s General.Tick matches 1 run function asset:object/atk.fire_shot_base/tick/shot
	execute if score @s General.Tick matches 3 run function asset:object/atk.fire_shot_base/tick/shot
	execute if score @s General.Tick matches 5 run function asset:object/atk.fire_shot_base/tick/shot
	execute if score @s General.Tick matches 7 run function asset:object/atk.fire_shot_base/tick/shot
	execute if score @s General.Tick matches 9 run function asset:object/atk.fire_shot_base/tick/shot

# 削除する
	execute if score @s General.Tick matches 9.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
