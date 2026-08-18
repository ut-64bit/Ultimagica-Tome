#> player_manager:stats/skill/apply_selected/next

execute unless data storage player_manager:loadout temp.rebuild.queue[0] run return 0
data modify storage player_manager:loadout temp.rebuild.current set from storage player_manager:loadout temp.rebuild.queue[0]
data remove storage player_manager:loadout temp.rebuild.queue[0]
function player_manager:stats/skill/apply_selected/current.m with storage player_manager:loadout temp.rebuild.current
return run function player_manager:stats/skill/apply_selected/next
