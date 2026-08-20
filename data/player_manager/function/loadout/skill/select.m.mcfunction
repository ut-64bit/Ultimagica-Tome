#> player_manager:loadout/skill/select.m
# macro: {skill:string}

function player_manager:loadout/ensure
function player_manager:stats/rebuild

data remove storage player_manager:loadout temp.skill.select
$data modify storage player_manager:loadout temp.skill.select set from storage player_manager:loadout registry.skill[{id:"$(skill)"}]
$execute unless data storage player_manager:loadout temp.skill.select.cost run return run function player_manager:loadout/skill/error/unknown.m {skill:"$(skill)"}
data modify storage player_manager:loadout temp.display set from storage player_manager:loadout temp.skill.select
function player_manager:loadout/display/skill.m with storage player_manager:loadout temp.display
execute if data storage player:context this.Loadout{Class:""} run return run function player_manager:loadout/skill/error/class_required
$execute if data storage player:context this.Loadout.Skills[{id:"$(skill)"}] run return run function player_manager:loadout/skill/error/already_selected
$execute if data storage player:context this.ActiveSkills[{id:"$(skill)"}] run return run function player_manager:loadout/skill/error/innate_selected

# 選択済み・固有スキルとの競合を確認する。
data modify storage player_manager:loadout temp.conflict.candidate set from storage player_manager:loadout temp.skill.select
execute if function player_manager:loadout/skill/conflict/check run return run function player_manager:loadout/skill/error/conflict
data remove storage player_manager:loadout temp.conflict

execute store result score #CurrentSkillCost _ run data get storage player_manager:loadout temp.skill.select.cost
execute if score #CurrentSkillCost _ matches ..-1 run return run function player_manager:loadout/skill/error/invalid_cost
scoreboard players operation #NextSkillCost _ = @s SkillCost
scoreboard players operation #NextSkillCost _ += #CurrentSkillCost _
scoreboard players operation #NextSkillCapacity _ = @s SkillCapacity
scoreboard players set #CurrentSkillCapacityBonus _ 0
execute if data storage player_manager:loadout temp.skill.select.skill_capacity_bonus store result score #CurrentSkillCapacityBonus _ run data get storage player_manager:loadout temp.skill.select.skill_capacity_bonus
scoreboard players operation #NextSkillCapacity _ += #CurrentSkillCapacityBonus _
execute if score #NextSkillCost _ > #NextSkillCapacity _ run return run function player_manager:loadout/skill/error/capacity

$data modify storage player:context this.Loadout.Skills append value {id:"$(skill)"}
function player_manager:stats/rebuild
function player_manager:loadout/skill/message/select
return 1
