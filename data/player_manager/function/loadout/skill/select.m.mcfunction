#> player_manager:loadout/skill/select.m
# macro: {skill:string}

function player_manager:loadout/ensure
function player_manager:stats/rebuild

data remove storage player_manager:loadout temp.skill.select
$data modify storage player_manager:loadout temp.skill.select set from storage player_manager:loadout registry.skill[{id:"$(skill)"}]
$execute unless data storage player_manager:loadout temp.skill.select.cost run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"不明なスキルです: ","color":"red"},{"text":"$(skill)","color":"yellow"}]
execute unless data storage player_manager:loadout temp.skill.select.cost run return 0
data modify storage player_manager:loadout temp.display set from storage player_manager:loadout temp.skill.select
function player_manager:loadout/display/skill.m with storage player_manager:loadout temp.display
execute if data storage player:context this.Loadout{Class:""} run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"先にクラスを選択してください。","color":"red"}]
execute if data storage player:context this.Loadout{Class:""} run return 0
$execute if data storage player:context this.Loadout.Skills[{id:"$(skill)"}] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択済みのスキルです: ","color":"red"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"yellow","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
$execute if data storage player:context this.Loadout.Skills[{id:"$(skill)"}] run return 0
$execute if data storage player:context this.ActiveSkills[{id:"$(skill)"}] run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"このスキルはクラスの固有スキルです: ","color":"red"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"yellow","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
$execute if data storage player:context this.ActiveSkills[{id:"$(skill)"}] run return 0

execute store result score #CurrentSkillCost _ run data get storage player_manager:loadout temp.skill.select.cost
execute if score #CurrentSkillCost _ matches ..-1 run return 0
scoreboard players operation #NextSkillCost _ = @s SkillCost
scoreboard players operation #NextSkillCost _ += #CurrentSkillCost _
scoreboard players operation #NextSkillCapacity _ = @s SkillCapacity
scoreboard players set #CurrentSkillCapacityBonus _ 0
execute if data storage player_manager:loadout temp.skill.select.skill_capacity_bonus store result score #CurrentSkillCapacityBonus _ run data get storage player_manager:loadout temp.skill.select.skill_capacity_bonus
scoreboard players operation #NextSkillCapacity _ += #CurrentSkillCapacityBonus _
execute if score #NextSkillCost _ > #NextSkillCapacity _ run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スキルコストが上限を超えます。","color":"red"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"SkillCost"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"SkillCapacity"},"color":"yellow"},{"text":")","color":"gray"}]
execute if score #NextSkillCost _ > #NextSkillCapacity _ run return 0

$data modify storage player:context this.Loadout.Skills append value {id:"$(skill)"}
function player_manager:stats/rebuild
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スキルを設定しました: ","color":"yellow"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"aqua","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
