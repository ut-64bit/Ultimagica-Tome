#> player_manager:stats/skill/apply_selected/current.m
# macro: {id:string}

data remove storage player_manager:loadout temp.rebuild.skill
$data modify storage player_manager:loadout temp.rebuild.skill set from storage player_manager:loadout registry.skill[{id:"$(id)"}]
execute unless data storage player_manager:loadout temp.rebuild.skill.cost run return 0

# 固有スキルや選択済みスキルとの重複は除去する。
$execute if data storage player:context this.ActiveSkills[{id:"$(id)"}] run return 0

execute store result score #CurrentSkillCost _ run data get storage player_manager:loadout temp.rebuild.skill.cost
execute if score #CurrentSkillCost _ matches ..-1 run return 0
scoreboard players operation #NextSkillCost _ = @s SkillCost
scoreboard players operation #NextSkillCost _ += #CurrentSkillCost _
execute if score #NextSkillCost _ > @s SkillCapacity run return 0

scoreboard players operation @s SkillCost = #NextSkillCost _
$data modify storage player_manager:loadout temp.rebuild.selected append value {id:"$(id)"}
function player_manager:stats/skill/apply.m with storage player_manager:loadout temp.rebuild.current
return 1
