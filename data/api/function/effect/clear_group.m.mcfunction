#> api:effect/clear_group.m
# 引数: {Group:"buff|debuff|..."}

$data modify storage api: in.Group set value "$(Group)"
execute store result score #EffectApiResult _ run function api:effect/clear_group
data remove storage api: in.Group
return run scoreboard players get #EffectApiResult _
