#> player_manager:loadout/skill/show/selected_entry.m
# macro: {id:string}

data remove storage player_manager:loadout temp.show.skill
$data modify storage player_manager:loadout temp.show.skill set from storage player_manager:loadout registry.skill[{id:"$(id)"}]
execute unless data storage player_manager:loadout temp.show.skill.cost run return 0
data modify storage player_manager:loadout temp.display set from storage player_manager:loadout temp.show.skill
function player_manager:loadout/display/skill.m with storage player_manager:loadout temp.display
function player_manager:loadout/skill/show/selected_message
