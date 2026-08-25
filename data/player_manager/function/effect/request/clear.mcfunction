#> player_manager:effect/request/clear
#
# @within player:context this

data modify storage api: out.EffectResult set value false
execute unless entity @s[type=player] run return 0
execute unless data storage player:context this.Effects[0] run return 0

data modify storage effect:runtime Operations append value {Type:"clear",Request:{}}
data modify storage api: out.EffectResult set value true

return run function player_manager:effect/request/finish
