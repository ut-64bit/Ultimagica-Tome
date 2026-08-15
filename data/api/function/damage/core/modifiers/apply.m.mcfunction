#> api:damage/core/modifiers/apply.m
#
# macro: {Match:compound,Multiplier:int}
# 1000を1.0倍として扱う。

$execute unless data storage api:temp DamageInfo$(Match) run return 0

execute store result score #DamageModifier _ run data get storage api:temp DamageModifier.Multiplier
execute if score #DamageModifier _ matches ..-1 run scoreboard players set #DamageModifier _ 0
scoreboard players operation #DamageValue _ *= #DamageModifier _
scoreboard players operation #DamageValue _ /= #c_1000 const
