#> api:player/loadout/skill/remove
#
# 指定位置の選択スキルを解除し、後続のスキルを前へ詰める。
# 使用例: execute as @p[distance=..3] run function api:player/loadout/skill/remove {slot:1}
# 使用例: execute as @p[distance=..3] run function api:player/loadout/skill/remove {slot:-1}
# @input slot: 1から始まる選択スキル番号。負数は末尾から数える（-1が最後尾）
# @api

execute unless entity @s[type=player] run return fail
execute unless function player_manager:loadout/can_edit run return fail

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

$execute store result score #LoadoutResult _ run function player_manager:loadout/skill/remove.m {slot:$(slot)}

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop

return run scoreboard players get #LoadoutResult _
