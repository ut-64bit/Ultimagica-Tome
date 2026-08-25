#> player_manager:effect/query/get.m
# 引数: {EffectID:"effect_id"}

data modify storage api: out.EffectFound set value false
data remove storage api: out.Effect
$data modify storage api: out.Effect set from storage player:context this.Effects[{ID:"$(EffectID)"}]
execute if data storage api: out.Effect run data modify storage api: out.EffectFound set value true
return run data get storage api: out.EffectFound
