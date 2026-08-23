#> player_manager:loadout/preset/share/magic_next

execute unless data storage player_manager:loadout temp.preset.share.queue[0].id run return 0
data modify storage player_manager:loadout temp.preset.share.current set from storage player_manager:loadout temp.preset.share.queue[0]
data remove storage player_manager:loadout temp.preset.share.queue[0]
function player_manager:loadout/preset/share/magic_entry.m with storage player_manager:loadout temp.preset.share.current
return run function player_manager:loadout/preset/share/magic_next
