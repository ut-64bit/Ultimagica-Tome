#> api:player/effect/remove.m
# 引数: {EffectID:"effect_id"}

$data modify storage api: in.EffectID set value "$(EffectID)"
execute store result score #EffectApiResult _ run function api:player/effect/remove
data remove storage api: in.EffectID
return run scoreboard players get #EffectApiResult _
