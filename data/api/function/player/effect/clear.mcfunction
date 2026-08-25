#> api:player/effect/clear
#
# 全カスタムエフェクトをcleanup経由で解除する。
# @output storage api: out.EffectResult : bool
# @api

execute unless entity @s[type=player] run return 0
execute if entity @s[tag=_this] run return run function player_manager:effect/request/clear

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

execute store result score #EffectApiResult _ run function player_manager:effect/request/clear

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop

return run scoreboard players get #EffectApiResult _
