#> player_manager:loadout/skill/conflict/reverse.m
# macro: {id:string}

$execute if data storage player_manager:loadout temp.conflict.active.conflicts[{id:"$(id)"}] run scoreboard players set #SkillConflict _ 1
return run scoreboard players get #SkillConflict _
