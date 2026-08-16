#> asset:attack/crystal_shield/attack_main/
#

execute if score @s ChargePhase matches 1 run function asset:attack/crystal_shield/attack_main/normal/
execute if score @s ChargePhase matches 2 run function asset:attack/crystal_shield/attack_main/charge/
