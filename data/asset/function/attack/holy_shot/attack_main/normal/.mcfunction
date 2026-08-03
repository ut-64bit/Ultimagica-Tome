#> asset:attack/holy_shot/attack_main/normal/
#

execute if score @s AttackTime matches 1 facing ^0.55 ^0.4 ^20 run function asset:attack/holy_shot/attack_main/normal/shot_1
execute if score @s AttackTime matches 6 facing ^-0.35 ^-0.2 ^20 run function asset:attack/holy_shot/attack_main/normal/shot_2

execute if score @s AttackTime matches 6.. run data modify storage asset:context State set value "standby"
