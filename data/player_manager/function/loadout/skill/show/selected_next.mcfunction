#> player_manager:loadout/skill/show/selected_next

execute unless data storage player_manager:loadout temp.show.skill_queue[0] run return 0
data modify storage player_manager:loadout temp.show.current set from storage player_manager:loadout temp.show.skill_queue[0]
data remove storage player_manager:loadout temp.show.skill_queue[0]
function player_manager:loadout/skill/show/selected_entry.m with storage player_manager:loadout temp.show.current
return run function player_manager:loadout/skill/show/selected_next
