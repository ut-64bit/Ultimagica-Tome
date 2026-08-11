#> player_manager:loadout/magic/show/next

execute unless data storage player_manager:loadout temp.show.magic[0] run return 0
data modify storage player_manager:loadout temp.show.current set from storage player_manager:loadout temp.show.magic[0]
execute store result storage player_manager:loadout temp.show.current.slot int 1 run scoreboard players get #LoadoutDisplaySlot _
function player_manager:loadout/magic/show/entry.m with storage player_manager:loadout temp.show.current
data remove storage player_manager:loadout temp.show.magic[0]
scoreboard players add #LoadoutDisplaySlot _ 1
return run function player_manager:loadout/magic/show/next
