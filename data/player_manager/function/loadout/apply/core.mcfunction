#> player_manager:loadout/apply/core
# 読み込み済みのプレイヤー構成から能力値を再構築し、構成アイテムを付与する。
# player:context this が読み込まれている状態で使用する。

function player_manager:stats/rebuild

data modify storage player_manager:loadout temp.apply.magic set from storage player:context this.Loadout.Magic
scoreboard players set #LoadoutMagicSlot _ 0
function player_manager:loadout/magic/get_limit

function player_manager:loadout/apply/next

data remove storage player_manager:loadout temp.apply
