#> player_manager:stats/rebuild_player
#
# 実行者の永続データを読み込み、能力値を再構築して保存する。

execute unless entity @s[type=player] run return fail

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

function player_manager:stats/rebuild

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop
return 1
