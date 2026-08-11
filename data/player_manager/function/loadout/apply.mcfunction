#> player_manager:loadout/apply
#
# 選択済みロードアウトを試合用アイテムとして付与する。

execute unless entity @s[type=player] run return fail

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

function player_manager:loadout/ensure
function player_manager:loadout/apply/core

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop

return 1
