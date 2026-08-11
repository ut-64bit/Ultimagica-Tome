#> api:player/loadout/magic/set
#
# 指定スロットの魔法を変更する。末尾の次を指定した場合は追加になる。
# 使用例: execute as @p[distance=..3] run function api:player/loadout/magic/set {slot:1,magic:"fire_ball"}
# @input slot: 1から始まる魔法スロット番号
# @input magic: data/asset/loot_table に登録された魔法ID
# @api

execute unless entity @s[type=player] run return fail
execute store result score #LoadoutCanEdit _ run function player_manager:loadout/can_edit
execute unless score #LoadoutCanEdit _ matches 1 run return fail

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

$execute store result score #LoadoutResult _ run function player_manager:loadout/magic/set.m {slot:$(slot),magic:"$(magic)"}

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop

return run scoreboard players get #LoadoutResult _
