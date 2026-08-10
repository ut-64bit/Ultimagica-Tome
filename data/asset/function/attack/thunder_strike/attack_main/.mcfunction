#> asset:attack/thunder_strike/attack_main/
#

execute if score @s AttackTime matches 3 anchored eyes positioned ^-0.2 ^-0.1 ^1 run function api:object/summon.m {ID:"particle.lightning_strike_1"}
execute if score @s AttackTime matches 3 run playsound t_magic:electric_shock player @a ~ ~ ~ 1.3 1
execute if score @s AttackTime matches 6 run function asset:attack/thunder_strike/attack_main/shot

# ロックオンマーカーを表示する
	execute if data storage player:context this.StateMachine.state_data.Field.TargetID run function asset:attack/_common/vfx/lockon_marker

execute if score @s AttackTime matches 16.. run function player_manager:fsm/request {state:"idle"}
