#> api:player/effect/give_with.m
# 引数: {Effect:{ID:"effect_id",Duration?:int,Data?:{},Source?:{}}}

$data modify storage api: in.Effect set value $(Effect)
execute store result score #EffectApiResult _ run function api:player/effect/give
data remove storage api: in.Effect
return run scoreboard players get #EffectApiResult _
