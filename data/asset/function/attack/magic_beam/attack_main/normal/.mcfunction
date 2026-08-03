#> asset:attack/magic_beam/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/magic_beam/attack_main/normal/shot

execute if score @s AttackTime matches 1.. run data modify storage asset:context State set value "standby"
