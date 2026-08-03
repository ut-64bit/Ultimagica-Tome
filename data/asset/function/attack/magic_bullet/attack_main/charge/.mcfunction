#> asset:attack/magic_bullet/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/magic_bullet/attack_main/charge/shot

execute if score @s AttackTime matches 1.. run data modify storage asset:context State set value "standby"
