#> asset:attack/thunder_spark/attack_main/
#

# 演出
	execute if score @s AttackTime matches 1 run playsound t_magic:electric_shock player @a ~ ~ ~ 1 1

# 発射
	execute if score @s AttackTime matches 1 run function asset:attack/thunder_spark/attack_main/shot_02
	execute if score @s AttackTime matches 4 run function asset:attack/thunder_spark/attack_main/shot_02
	execute if score @s AttackTime matches 7 run function asset:attack/thunder_spark/attack_main/shot_02

# 長押してたら繰り返す
	execute if score @s AttackTime matches 9 if entity @s[tag=UsingItem] run function asset:attack/thunder_spark/attack_main/repeat

# 終了
	execute if score @s AttackTime matches 18.. run function player_manager:fsm/request {state:"idle"}

# MP消費
	data modify storage api: in.Amount set value 0
	function api:stamina/consume
