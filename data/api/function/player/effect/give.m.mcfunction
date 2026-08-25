#> api:player/effect/give.m
# 引数: {ID:"effect_id"}
# 定義済みのデフォルト値で付与する簡易版。

$data modify storage api: in.Effect set value {ID:"$(ID)"}
execute store result score #EffectApiResult _ run function api:player/effect/give
data remove storage api: in.Effect
return run scoreboard players get #EffectApiResult _
