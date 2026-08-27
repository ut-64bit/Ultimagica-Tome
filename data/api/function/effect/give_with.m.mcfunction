#> api:effect/give_with.m
# Fieldの上書き値を指定してEffectを付与する。
# 引数: {ID:"effect_id",Field:{...}}

$data modify storage api: in.ID set value "$(ID)"
$data modify storage api: in.FieldOverride set value $(Field)
execute store result score #EffectApiResult _ run function api:effect/core/give_player
data remove storage api: in.ID
data remove storage api: in.FieldOverride
return run scoreboard players get #EffectApiResult _
