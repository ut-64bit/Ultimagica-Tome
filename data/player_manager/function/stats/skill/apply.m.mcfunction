#> player_manager:stats/skill/apply.m
# macro: {id:string}

data remove storage player_manager:loadout temp.rebuild.skill
$data modify storage player_manager:loadout temp.rebuild.skill set from storage player_manager:loadout registry.skill[{id:"$(id)"}]
execute unless data storage player_manager:loadout temp.rebuild.skill run return 0
$execute if data storage player:context this.ActiveSkills[{id:"$(id)"}] run return 0

$data modify storage player:context this.ActiveSkills append value {id:"$(id)"}
$function player:skill/$(id)/apply
return 1
