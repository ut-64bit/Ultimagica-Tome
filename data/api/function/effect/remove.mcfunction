#> api:effect/remove
# @input storage api: in.ID : string
# @output storage api: out.EffectResult : bool
# @api

execute unless entity @s[type=player] run return 0
execute unless data storage api: in.ID run return 0
data modify storage api: in.EffectID set from storage api: in.ID
execute store result score #EffectApiResult _ run function api:effect/core/remove_player
data remove storage api: in.ID
data remove storage api: in.EffectID
return run scoreboard players get #EffectApiResult _
