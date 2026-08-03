#> asset:attack/water_bullet/attack_main/charge/
#

execute if score @s AttackTime matches 1 anchored eyes positioned ^0.00000 ^0.60000 ^0.5 facing ^0.00000 ^0.60000 ^1 run function asset:attack/water_bullet/attack_main/charge/shot
execute if score @s AttackTime matches 3 anchored eyes positioned ^0.57063 ^0.18541 ^0.5 facing ^0.57063 ^0.18541 ^1 run function asset:attack/water_bullet/attack_main/charge/shot
execute if score @s AttackTime matches 5 anchored eyes positioned ^0.35267 ^-.48541 ^0.5 facing ^0.35267 ^-.48541 ^1 run function asset:attack/water_bullet/attack_main/charge/shot
execute if score @s AttackTime matches 7 anchored eyes positioned ^-.35267 ^-.48541 ^0.5 facing ^-.35267 ^-.48541 ^1 run function asset:attack/water_bullet/attack_main/charge/shot
execute if score @s AttackTime matches 9 anchored eyes positioned ^-.57063 ^0.18541 ^0.5 facing ^-.57063 ^0.18541 ^1 run function asset:attack/water_bullet/attack_main/charge/shot

# ロックオンマーカーを表示する
	execute if data storage player:context this.StateMachine.state_data.Field.TargetID run function asset:attack/_common/vfx/lockon_marker

execute if score @s AttackTime matches 21.. run function player_manager:fsm/request {state:"idle"}
