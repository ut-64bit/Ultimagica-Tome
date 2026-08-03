#> asset:attack/holy_bind/attack_main/
#

execute if score @s AttackTime matches 1 if data storage asset:context this.TargetID run function asset:attack/holy_bind/attack_main/shot
execute if score @s AttackTime matches 1 unless data storage asset:context this.TargetID run function asset:attack/_common/vfx/shot_fail

execute if score @s AttackTime matches 1.. run data modify storage asset:context State set value "standby"
