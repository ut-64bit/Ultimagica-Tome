#> api:effect/core/get_player
# 必要に応じてプレイヤーデータを読み込み、指定Effectを取得する。

execute if entity @s[tag=_this] run return run function player_manager:effect/query/get.m with storage api: in
function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player
execute store result score #EffectApiResult _ run function player_manager:effect/query/get.m with storage api: in
function player_manager:common/this/pop
return run scoreboard players get #EffectApiResult _
