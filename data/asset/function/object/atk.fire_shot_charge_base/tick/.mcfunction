#> asset:object/atk.fire_shot_charge_base/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

# 発射
	execute if score @s General.Tick matches 5 facing ^-3.2 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 4 facing ^-2.4 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 3 facing ^-1.6 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 2 facing ^-0.8 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 1 facing ^0.0 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 2 facing ^0.8 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 3 facing ^1.6 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 4 facing ^2.4 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot
	execute if score @s General.Tick matches 5 facing ^3.2 ^ ^10 run function asset:object/atk.fire_shot_charge_base/tick/shot

# 削除する
	execute if score @s General.Tick matches 6.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
