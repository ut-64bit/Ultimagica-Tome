#> api:player/effect/clear_group.m
# 引数: {EffectGroup:"buff|debuff|..."}

$data modify storage api: in.EffectGroup set value "$(EffectGroup)"
execute store result score #EffectApiResult _ run function api:player/effect/clear_group
data remove storage api: in.EffectGroup
return run scoreboard players get #EffectApiResult _
