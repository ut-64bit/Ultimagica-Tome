#> player_manager:effect/query/get.m
# 指定IDのEffectを検索し、取得結果をapi:outへ書き出す。

data modify storage api: out.EffectFound set value false
data remove storage api: out.Effect
$data modify storage api: out.Effect set from storage player:context this.Effects[{ID:"$(EffectID)"}]
execute if data storage api: out.Effect run data modify storage api: out.EffectFound set value true
return run data get storage api: out.EffectFound
