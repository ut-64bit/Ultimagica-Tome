#> asset:object/damage_indicator/summon/
#
# 召喚処理
#

loot spawn ~ ~ ~ loot asset:damage_indicator
execute as @e[type=item,distance=..0.01] if items entity @s container.0 stone[custom_data~{type:"damage_indicator"}] run tag @s add _init
