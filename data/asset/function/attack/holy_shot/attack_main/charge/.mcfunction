#> asset:attack/holy_shot/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/holy_shot/attack_main/charge/create_attack_data
execute if score @s AttackTime matches 1 run playsound entity.player.attack.sweep player @a ~ ~ ~ 0.9 1.1

execute if score @s AttackTime matches 1 anchored eyes positioned ^0.05 ^-.10 ^0.1 facing ^0.05 ^0.05 ^2 run function asset:attack/holy_shot/attack_main/charge/shot
execute if score @s AttackTime matches 1 anchored eyes positioned ^-.10 ^-.15 ^0.1 facing ^-.10 ^0.00 ^2 run function asset:attack/holy_shot/attack_main/charge/shot
execute if score @s AttackTime matches 2 anchored eyes positioned ^-.25 ^-.20 ^0.1 facing ^-.25 ^-.05 ^2 run function asset:attack/holy_shot/attack_main/charge/shot
execute if score @s AttackTime matches 2 anchored eyes positioned ^-.40 ^-.25 ^0.1 facing ^-.40 ^-.10 ^2 run function asset:attack/holy_shot/attack_main/charge/shot

execute if score @s AttackTime matches 4.. run data modify storage asset:context State set value "standby"
