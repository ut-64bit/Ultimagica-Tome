#> player:menu/loadout/build
#
# temp.menu_preset.configを使って、保存済み構成の選択肢を生成する。

data modify storage player_manager:loadout temp.menu_preset.queue set from storage player:context this.LoadoutPresets
data modify storage player_manager:loadout temp.menu_preset.contents set value []
scoreboard players set #LoadoutPresetMenuSlot _ 0
function player:menu/loadout/build/next
data remove storage player_manager:loadout temp.menu_preset.queue
data remove storage player_manager:loadout temp.menu_preset.current
data remove storage player_manager:loadout temp.menu_preset.entry
