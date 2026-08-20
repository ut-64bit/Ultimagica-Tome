#> api:player/loadout/skill/select
#
# コスト上限内でスキルを追加する。
# 使用例: execute as @p[distance=..3] run function api:player/loadout/skill/select {skill:"tag_spear_damage"}
# @input skill: player:skill/loadで登録したスキルID
# @api

execute unless entity @s[type=player] run return fail
execute unless function player_manager:loadout/can_edit run return fail
function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player
$execute store result score #LoadoutResult _ run function player_manager:loadout/skill/select.m {skill:"$(skill)"}
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop
return run scoreboard players get #LoadoutResult _
