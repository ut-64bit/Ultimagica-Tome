#> asset:attack/wind_jump/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/wind_jump/attack_main/charge/jump

execute if score @s AttackTime matches 1.. run data modify storage asset:context State set value "standby"
