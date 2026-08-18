#> player_manager:loadout/skill/cost/next

execute unless data storage player_manager:loadout temp.cost.queue[0] run return 0
data modify storage player_manager:loadout temp.cost.current set from storage player_manager:loadout temp.cost.queue[0]
data remove storage player_manager:loadout temp.cost.queue[0]
function player_manager:loadout/skill/cost/current.m with storage player_manager:loadout temp.cost.current
return run function player_manager:loadout/skill/cost/next
