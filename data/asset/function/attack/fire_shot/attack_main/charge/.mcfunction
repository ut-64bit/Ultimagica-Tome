#> asset:attack/fire_shot/attack_main/charge/
#

# 演出
	execute if score @s AttackTime matches 1 anchored eyes positioned ^ ^-0.2 ^1 run function api:object/summon.m {ID:"particle.magic_fire"}
	execute if score @s AttackTime matches 1 run playsound entity.evoker.cast_spell player @a ~ ~ ~ 2 1

# 発射
	execute if score @s AttackTime matches 6 run function asset:attack/fire_shot/attack_main/charge/shot

# 終了
	execute if score @s AttackTime matches 9.. run function player_manager:fsm/request {state:"idle"}
