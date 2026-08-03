#> asset:attack/wind_jump/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/wind_jump/attack_main/normal/jump

execute if score @s AttackTime matches 1.. run data modify storage asset:context State set value "standby"
