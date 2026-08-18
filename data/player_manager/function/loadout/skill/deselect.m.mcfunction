#> player_manager:loadout/skill/deselect.m
# macro: {skill:string}

function player_manager:loadout/ensure
function player_manager:stats/rebuild
$data modify storage player_manager:loadout temp.display set value {id:"$(skill)"}
$data modify storage player_manager:loadout temp.display set from storage player_manager:loadout registry.skill[{id:"$(skill)"}]
function player_manager:loadout/display/skill.m with storage player_manager:loadout temp.display
$execute unless data storage player:context this.Loadout.Skills[{id:"$(skill)"}] if data storage player:context this.ActiveSkills[{id:"$(skill)"}] run return run function player_manager:loadout/skill/error/innate_deselect
$execute unless data storage player:context this.Loadout.Skills[{id:"$(skill)"}] run return run function player_manager:loadout/skill/error/not_selected

# コスト上限を増やすスキルを外しても、残りの構成が上限内に収まるか確認する。
scoreboard players operation #NextSkillCost _ = @s SkillCost
scoreboard players set #CurrentSkillCost _ 0
execute if data storage player_manager:loadout temp.display.cost store result score #CurrentSkillCost _ run data get storage player_manager:loadout temp.display.cost
scoreboard players operation #NextSkillCost _ -= #CurrentSkillCost _
scoreboard players operation #NextSkillCapacity _ = @s SkillCapacity
scoreboard players set #CurrentSkillCapacityBonus _ 0
execute if data storage player_manager:loadout temp.display.skill_capacity_bonus store result score #CurrentSkillCapacityBonus _ run data get storage player_manager:loadout temp.display.skill_capacity_bonus
scoreboard players operation #NextSkillCapacity _ -= #CurrentSkillCapacityBonus _
execute if score #NextSkillCost _ > #NextSkillCapacity _ run return run function player_manager:loadout/skill/error/deselect_capacity

$data remove storage player:context this.Loadout.Skills[{id:"$(skill)"}]
function player_manager:stats/rebuild
function player_manager:loadout/skill/message/deselect
return 1
