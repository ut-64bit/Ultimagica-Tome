#> api:effect/core/remove_player
# 必要に応じてプレイヤーデータを読み込み、Effect解除要求を実行する。

execute if entity @s[tag=_this] run return run function player_manager:effect/request/remove
function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player
execute store result score #EffectApiResult _ run function player_manager:effect/request/remove
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop
return run scoreboard players get #EffectApiResult _
