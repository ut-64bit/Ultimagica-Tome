#> player_manager:loadout/preset/ensure
#
# 構成保存に必要なプレイヤーデータを補完する。
# player:context this が読み込まれている状態で使用する。

function player_manager:loadout/ensure
execute unless data storage player:context this.LoadoutPresets run data modify storage player:context this.LoadoutPresets set value []
