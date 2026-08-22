#> asset:attack/holy_beam/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/holy_beam/attack_main/normal/shot

# 演出
effect give @s minecraft:slow_falling 1 0 true

# 止める
execute if score @s AttackTime matches ..15 run function lib:motion/reset

execute if score @s AttackTime matches 15.. run function player_manager:fsm/request {state:"idle"}
