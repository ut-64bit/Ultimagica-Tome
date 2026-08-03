#> asset:attack/holy_bind/attack_main/
#

execute if score @s AttackTime matches 1 if data storage player:context this.StateMachine.state_data.Field.TargetID run function asset:attack/holy_bind/attack_main/shot
execute if score @s AttackTime matches 1 unless data storage player:context this.StateMachine.state_data.Field.TargetID run function asset:attack/_common/vfx/shot_fail

execute if score @s AttackTime matches 13.. run function player_manager:fsm/request {state:"idle"}
