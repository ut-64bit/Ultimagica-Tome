#> api:effect/remove.m
# IDを指定してEffectを解除するマクロAPIを呼び出す。
# 引数: {ID:"effect_id"}

$data modify storage api: in.ID set value "$(ID)"
data modify storage api: in.EffectID set from storage api: in.ID
execute store result score #EffectApiResult _ run function api:effect/core/remove_player
data remove storage api: in.ID
data remove storage api: in.EffectID
return run scoreboard players get #EffectApiResult _
