#> player_manager:loadout/apply/next
# 構成内の魔法をスロット上限まで順番に付与する。

execute unless data storage player_manager:loadout temp.apply.magic[0] run return 0

execute if score #LoadoutMagicSlot _ >= #LoadoutMagicLimit _ run return 0

data modify storage player_manager:loadout temp.apply.current set from storage player_manager:loadout temp.apply.magic[0]
execute store result storage player_manager:loadout temp.apply.current.slot int 1 run scoreboard players get #LoadoutMagicSlot _
function player_manager:loadout/apply/give.m with storage player_manager:loadout temp.apply.current

data remove storage player_manager:loadout temp.apply.magic[0]
scoreboard players add #LoadoutMagicSlot _ 1
return run function player_manager:loadout/apply/next
