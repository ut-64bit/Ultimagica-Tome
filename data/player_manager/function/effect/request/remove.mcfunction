#> player_manager:effect/request/remove
#
# @within player:context this
# @input storage api: in.EffectID : string

data modify storage api: out.EffectResult set value false
execute unless entity @s[type=player] run return 0
execute unless data storage api: in.EffectID run return 0

data modify storage effect:runtime Operations append value {Type:"remove",Request:{}}
data modify storage effect:runtime Operations[-1].Request.ID set from storage api: in.EffectID
data modify storage api: out.EffectResult set value true

return run function player_manager:effect/request/finish
