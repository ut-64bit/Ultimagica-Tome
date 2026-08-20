#> player_manager:loadout/skill/remove_at.m
# macro: {index:int}

$data modify storage player_manager:loadout temp.skill.remove.current set from storage player:context this.Loadout.Skills[$(index)]
