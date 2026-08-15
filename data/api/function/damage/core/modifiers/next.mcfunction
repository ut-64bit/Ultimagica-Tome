#> api:damage/core/modifiers/next
#
# 条件付き倍率を先頭から順番に適用する。

execute unless data storage api:temp DamageModifiers[0] run return 0

data modify storage api:temp DamageModifier set from storage api:temp DamageModifiers[0]
data remove storage api:temp DamageModifiers[0]
execute if data storage api:temp DamageModifier.Match if data storage api:temp DamageModifier.Multiplier run function api:damage/core/modifiers/apply.m with storage api:temp DamageModifier

function api:damage/core/modifiers/next
