#> player_manager:loadout/skill/conflict/current.m
# macro: {id:string}

data remove storage player_manager:loadout temp.conflict.active
$data modify storage player_manager:loadout temp.conflict.active set from storage player_manager:loadout registry.skill[{id:"$(id)"}]
execute unless data storage player_manager:loadout temp.conflict.active run return 0
$data modify storage player_manager:loadout temp.conflict.active_name set value {translate:"ut_magic.skill.$(id)"}

# 候補側が現在のスキルを指定している場合。
$execute if data storage player_manager:loadout temp.conflict.candidate.conflicts[{id:"$(id)"}] run scoreboard players set #SkillConflict _ 1
execute if score #SkillConflict _ matches 1 run return 1

# 現在のスキル側が候補を指定している場合。
function player_manager:loadout/skill/conflict/reverse.m with storage player_manager:loadout temp.conflict.candidate
return run scoreboard players get #SkillConflict _
