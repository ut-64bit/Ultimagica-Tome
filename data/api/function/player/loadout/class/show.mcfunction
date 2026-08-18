#> api:player/loadout/class/show
#
# 現在のクラスとスキルコストを表示する。
# @api

execute unless entity @s[type=player] run return fail
function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player
execute store result score #LoadoutResult _ run function player_manager:loadout/class/show
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop
return run scoreboard players get #LoadoutResult _
