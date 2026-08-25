#> api:player/effect/get
#
# 指定IDのエフェクトデータを取得する。
#
# @input storage api: in.EffectID : string
# @output
# storage api: out.EffectFound : bool
# storage api: out.Effect      : compound
# @api

execute unless entity @s[type=player] run return 0
execute unless data storage api: in.EffectID run return 0
execute if entity @s[tag=_this] run return run function player_manager:effect/query/get.m with storage api: in

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

execute store result score #EffectApiResult _ run function player_manager:effect/query/get.m with storage api: in

function player_manager:common/this/pop
return run scoreboard players get #EffectApiResult _
