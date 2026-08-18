#> api:player/loadout/skill/deselect
#
# 選択スキルを解除する。固有スキルは解除できない。
# 使用例: execute as @p[distance=..3] run function api:player/loadout/skill/deselect {skill:"spear_mastery"}
# @api

execute unless entity @s[type=player] run return fail
execute unless function player_manager:loadout/can_edit run return fail
function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player
$execute store result score #LoadoutResult _ run function player_manager:loadout/skill/deselect.m {skill:"$(skill)"}
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop
return run scoreboard players get #LoadoutResult _
