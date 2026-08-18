#> player_manager:loadout/skill/deselect.m
# macro: {skill:string}

function player_manager:loadout/ensure
function player_manager:stats/rebuild
$data modify storage player_manager:loadout temp.display set value {id:"$(skill)"}
$data modify storage player_manager:loadout temp.display set from storage player_manager:loadout registry.skill[{id:"$(skill)"}]
function player_manager:loadout/display/skill.m with storage player_manager:loadout temp.display
$execute unless data storage player:context this.Loadout.Skills[{id:"$(skill)"}] if data storage player:context this.ActiveSkills[{id:"$(skill)"}] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"固有スキルは解除できません: ","color":"red"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"yellow","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
$execute unless data storage player:context this.Loadout.Skills[{id:"$(skill)"}] if data storage player:context this.ActiveSkills[{id:"$(skill)"}] run return 0
$execute unless data storage player:context this.Loadout.Skills[{id:"$(skill)"}] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択されていないスキルです: ","color":"red"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"yellow","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
$execute unless data storage player:context this.Loadout.Skills[{id:"$(skill)"}] run return 0

# コスト上限を増やすスキルを外しても、残りの構成が上限内に収まるか確認する。
scoreboard players operation #NextSkillCost _ = @s SkillCost
scoreboard players set #CurrentSkillCost _ 0
execute if data storage player_manager:loadout temp.display.cost store result score #CurrentSkillCost _ run data get storage player_manager:loadout temp.display.cost
scoreboard players operation #NextSkillCost _ -= #CurrentSkillCost _
scoreboard players operation #NextSkillCapacity _ = @s SkillCapacity
scoreboard players set #CurrentSkillCapacityBonus _ 0
execute if data storage player_manager:loadout temp.display.skill_capacity_bonus store result score #CurrentSkillCapacityBonus _ run data get storage player_manager:loadout temp.display.skill_capacity_bonus
scoreboard players operation #NextSkillCapacity _ -= #CurrentSkillCapacityBonus _
execute if score #NextSkillCost _ > #NextSkillCapacity _ run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"このスキルを外すとコスト上限を超えます。先にほかのスキルを解除してください。","color":"red"}]
execute if score #NextSkillCost _ > #NextSkillCapacity _ run return 0

$data remove storage player:context this.Loadout.Skills[{id:"$(skill)"}]
function player_manager:stats/rebuild
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スキルを解除しました: ","color":"yellow"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"aqua","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
