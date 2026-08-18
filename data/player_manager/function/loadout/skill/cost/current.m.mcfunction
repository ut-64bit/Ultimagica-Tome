#> player_manager:loadout/skill/cost/current.m
# macro: {id:string}

data remove storage player_manager:loadout temp.cost.skill
$data modify storage player_manager:loadout temp.cost.skill set from storage player_manager:loadout registry.skill[{id:"$(id)"}]
execute unless data storage player_manager:loadout temp.cost.skill run scoreboard players set #CandidateSkillValid _ 0
execute unless data storage player_manager:loadout temp.cost.skill run return 0

# コスト上限を増減する効果を候補クラスの上限へ反映する。
scoreboard players set #CurrentSkillCapacityBonus _ 0
execute if data storage player_manager:loadout temp.cost.skill.skill_capacity_bonus store result score #CurrentSkillCapacityBonus _ run data get storage player_manager:loadout temp.cost.skill.skill_capacity_bonus
scoreboard players operation #CandidateSkillCapacityBonus _ += #CurrentSkillCapacityBonus _

# 候補クラスの固有スキルは固定枠へ移るため使用コストには含めない。
$execute if data storage player_manager:loadout temp.cost.class.innate_skills[{id:"$(id)"}] run return 0

execute unless data storage player_manager:loadout temp.cost.skill.cost run scoreboard players set #CandidateSkillValid _ 0
execute unless data storage player_manager:loadout temp.cost.skill.cost run return 0

execute store result score #CurrentSkillCost _ run data get storage player_manager:loadout temp.cost.skill.cost
execute if score #CurrentSkillCost _ matches ..-1 run scoreboard players set #CandidateSkillValid _ 0
execute if score #CurrentSkillCost _ matches ..-1 run return 0
scoreboard players operation #CandidateSkillCost _ += #CurrentSkillCost _
