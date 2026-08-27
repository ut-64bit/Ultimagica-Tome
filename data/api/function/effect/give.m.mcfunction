#> api:effect/give.m
# IDを指定してEffectを付与するマクロAPIを呼び出す。
# 引数: {ID:"effect_id"}
# FieldOverrideとDurationOverrideはstorage api: inから受け取る。

$data modify storage api: in.ID set value "$(ID)"
execute store result score #EffectApiResult _ run function api:effect/core/give_player
data remove storage api: in.ID
return run scoreboard players get #EffectApiResult _
