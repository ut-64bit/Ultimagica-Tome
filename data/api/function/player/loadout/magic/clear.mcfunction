#> api:player/loadout/magic/clear
#
# 選択中の魔法をすべて解除する。
# 使用例: execute as @p[distance=..3] run function api:player/loadout/magic/clear
# @api

execute unless entity @s[type=player] run return fail
execute store result score #LoadoutCanEdit _ run function player_manager:loadout/can_edit
execute unless score #LoadoutCanEdit _ matches 1 run return fail

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

execute store result score #LoadoutResult _ run function player_manager:loadout/magic/clear

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop

return run scoreboard players get #LoadoutResult _
