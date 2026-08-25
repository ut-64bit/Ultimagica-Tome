#> api:effect/give
#
# Objectのapi:object/summonと同じ形式でEffectを付与する。
#
# @input
# storage api: in.ID               : string
# storage api: in.FieldOverride    : ?compound
# storage api: in.DurationOverride : ?int
# @output storage api: out.EffectResult : bool
# @api

execute unless entity @s[type=player] run return 0
execute unless data storage api: in.ID run return 0
execute store result score #EffectApiResult _ run function api:effect/core/give_player
data remove storage api: in.ID
data remove storage api: in.FieldOverride
data remove storage api: in.DurationOverride
return run scoreboard players get #EffectApiResult _
