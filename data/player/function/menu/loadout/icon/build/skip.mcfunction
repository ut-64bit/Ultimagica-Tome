#> player:menu/loadout/icon/build/skip
# 現在ページより前にあるアイコン候補を表示キューから除外する。

execute unless score #LoadoutPresetIconSkip _ matches 1.. run return 0
execute unless data storage player_manager:loadout temp.menu_icon.queue[0] run return 0

data remove storage player_manager:loadout temp.menu_icon.queue[0]
scoreboard players remove #LoadoutPresetIconSkip _ 1
return run function player:menu/loadout/icon/build/skip
