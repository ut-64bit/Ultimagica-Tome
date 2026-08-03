#> asset:attack/holy_spire_wave/attack_main/normal/
#

execute if score @s AttackTime matches 1 positioned ^0.0 ^ ^0.5 run function asset:attack/holy_spire_wave/attack_main/normal/shot

execute if score @s AttackTime matches 8.. run data modify storage asset:context State set value "standby"
