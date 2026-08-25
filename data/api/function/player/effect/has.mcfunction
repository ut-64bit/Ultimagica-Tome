#> api:player/effect/has
#
# 指定IDのエフェクトを持つか確認する。詳細データは返さない。
#
# @input storage api: in.EffectID : string
# @output storage api: out.EffectFound : bool
# @api

execute store result score #EffectApiResult _ run function api:player/effect/get
data remove storage api: out.Effect
return run scoreboard players get #EffectApiResult _
