#> player_manager:effect/request/clear_group
# 指定グループの一括解除操作をキューへ追加する。
# @input storage api: in.EffectGroup

data modify storage api: out.EffectResult set value false
execute unless entity @s[type=player] run return 0
execute unless data storage api: in.EffectGroup run return 0
data modify storage effect:runtime Operations append value {Type:"clear_group",Request:{}}
data modify storage effect:runtime Operations[-1].Request.Group set from storage api: in.EffectGroup
data modify storage api: out.EffectResult set value true
return run function player_manager:effect/request/finish
