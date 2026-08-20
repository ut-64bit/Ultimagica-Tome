#> player_manager:loadout/skill/conflict/next

execute unless data storage player_manager:loadout temp.conflict.queue[0] run return 0
data modify storage player_manager:loadout temp.conflict.current set from storage player_manager:loadout temp.conflict.queue[0]
data remove storage player_manager:loadout temp.conflict.queue[0]
function player_manager:loadout/skill/conflict/current.m with storage player_manager:loadout temp.conflict.current
execute if score #SkillConflict _ matches 1 run return 1
return run function player_manager:loadout/skill/conflict/next
