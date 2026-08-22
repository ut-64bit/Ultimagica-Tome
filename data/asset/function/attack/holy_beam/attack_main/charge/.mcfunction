#> asset:attack/holy_beam/attack_main/charge/
#

execute if score @s AttackTime matches 1 anchored eyes run function asset:attack/holy_beam/attack_main/charge/macro
execute if score @s AttackTime matches 2 anchored eyes run function asset:attack/holy_beam/attack_main/charge/macro
execute if score @s AttackTime matches 3 anchored eyes run function asset:attack/holy_beam/attack_main/charge/macro
execute if score @s AttackTime matches 4 anchored eyes run function asset:attack/holy_beam/attack_main/charge/macro
execute if score @s AttackTime matches 5 anchored eyes run function asset:attack/holy_beam/attack_main/charge/macro
execute if score @s AttackTime matches 6 anchored eyes run function asset:attack/holy_beam/attack_main/charge/macro
execute if score @s AttackTime matches 7 anchored eyes run function asset:attack/holy_beam/attack_main/charge/macro

# 演出
effect give @s minecraft:slow_falling 2 0 true

# 止める
execute if score @s AttackTime matches ..30 run function lib:motion/reset

# ロックオンマーカーを表示する
	execute if data storage player:context this.StateMachine.state_data.Field.TargetID run function asset:attack/_common/vfx/lockon_marker

execute if score @s AttackTime matches 30.. run function player_manager:fsm/request {state:"idle"}
