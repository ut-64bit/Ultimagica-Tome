#> asset:attack/crystal_wave/attack_main/normal/
#

execute if score @s AttackTime matches 1 run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 1.8
execute if score @s AttackTime matches 1 positioned ^0.3 ^ ^0.5 facing ^1.6 ^ ^10 run function asset:attack/crystal_wave/attack_main/normal/shot
execute if score @s AttackTime matches 1 positioned ^0.0 ^ ^0.5 facing ^0 ^0.01 ^10 run function asset:attack/crystal_wave/attack_main/normal/shot
execute if score @s AttackTime matches 1 positioned ^-0.3 ^ ^0.5 facing ^-1.6 ^ ^10 run function asset:attack/crystal_wave/attack_main/normal/shot

execute if score @s AttackTime matches 8.. run data modify storage asset:context State set value "standby"
