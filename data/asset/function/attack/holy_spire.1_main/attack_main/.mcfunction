#> asset:attack/holy_spire.1_main/attack_main/
#

execute if score @s AttackTime matches 1 run function asset:attack/holy_spire.1_main/attack_main/shot
execute if score @s AttackTime matches 5.. run data modify storage asset:context State set value "standby"
