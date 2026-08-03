#> asset:attack/water_rain/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/water_rain/attack_main/normal/shot

execute if score @s AttackTime matches 1.. run data modify storage asset:context State set value "standby"
