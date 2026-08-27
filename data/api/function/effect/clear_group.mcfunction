#> api:effect/clear_group
# 指定グループに属するEffectを対象プレイヤーからすべて解除する。
# @input storage api: in.Group : string
# @api

execute unless entity @s[type=player] run return 0
execute unless data storage api: in.Group run return 0
data modify storage api: in.EffectGroup set from storage api: in.Group
execute store result score #EffectApiResult _ run function api:effect/core/clear_group_player
data remove storage api: in.Group
data remove storage api: in.EffectGroup
return run scoreboard players get #EffectApiResult _
