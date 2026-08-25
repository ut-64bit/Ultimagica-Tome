#> api:effect/has
# 対象プレイヤーが指定IDのEffectを持っているか判定する。
# @input storage api: in.ID : string
# @output storage api: out.EffectFound
# @api

execute store result score #EffectApiResult _ run function api:effect/get
data remove storage api: out.Effect
return run scoreboard players get #EffectApiResult _
