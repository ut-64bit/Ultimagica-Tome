#> asset:attack/fire_breath/attack_main/
#

execute if score @s AttackTime matches 1 run function asset:attack/fire_breath/attack_main/create_attack_data
execute if score @s AttackTime matches 6 run function asset:attack/fire_breath/attack_main/create_attack_data

# 演出
	execute if score @s AttackTime matches 1 run playsound entity.ender_dragon.shoot player @a ~ ~ ~ 1 0.5
	execute if score @s AttackTime matches 6 run playsound entity.ender_dragon.shoot player @a ~ ~ ~ 1 0.5

# 空中にいるならジャンプする
	execute if score @s AttackTime matches 1 unless predicate lib:flag/on_ground run function asset:attack/fire_breath/attack_main/jump

# 発射
	execute store result storage asset:temp X float 0.01 run random value -120..120
	execute store result storage asset:temp Y float 0.01 run random value -120..120
	execute if score @s AttackTime matches 1..12 run function asset:attack/fire_breath/attack_main/shot.m with storage asset:temp
	data remove storage asset:temp X
	data remove storage asset:temp Y

# 長押してたら繰り返す
	execute if score @s AttackTime matches 12 if entity @s[tag=UsingItem] run function asset:attack/fire_breath/attack_main/repeat

# 終了
	execute if score @s AttackTime matches 21.. run function player_manager:fsm/request {state:"idle"}
