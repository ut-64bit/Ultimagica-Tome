#> asset:attack/wind_arrow/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/wind_arrow/attack_main/normal/shot

execute if score @s AttackTime matches 10.. run data modify storage asset:context State set value "standby"
