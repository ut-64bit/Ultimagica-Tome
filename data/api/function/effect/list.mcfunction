#> api:effect/list
# 対象プレイヤーが持つ全Effectの一覧を取得する。
# @output storage api: out.Effects
# @api

execute unless entity @s[type=player] run return 0
data modify storage api: out.Effects set value []
execute if entity @s[tag=_this] run data modify storage api: out.Effects set from storage player:context this.Effects
execute if entity @s[tag=_this] run return 1
function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player
data modify storage api: out.Effects set from storage player:context this.Effects
function player_manager:common/this/pop
return 1
