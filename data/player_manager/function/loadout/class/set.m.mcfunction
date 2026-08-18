#> player_manager:loadout/class/set.m
# macro: {class:string}

function player_manager:loadout/ensure
function player_manager:stats/rebuild
data remove storage player_manager:loadout temp.class.set
$data modify storage player_manager:loadout temp.class.set set from storage player_manager:loadout registry.class[{id:"$(class)"}]
$execute unless data storage player_manager:loadout temp.class.set run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"不明なクラスです: ","color":"red"},{"text":"$(class)","color":"yellow"}]
execute unless data storage player_manager:loadout temp.class.set run return 0

data modify storage player_manager:loadout temp.cost.class set from storage player_manager:loadout temp.class.set
function player_manager:loadout/skill/cost/for_class
scoreboard players set #CandidateSkillCapacity _ 0
execute if data storage player_manager:loadout temp.class.set.skill_capacity store result score #CandidateSkillCapacity _ run data get storage player_manager:loadout temp.class.set.skill_capacity
scoreboard players operation #CandidateSkillCapacity _ += #CandidateSkillCapacityBonus _
execute if score #CandidateSkillCapacity _ matches ..-1 run scoreboard players set #CandidateSkillCapacity _ 0

execute unless score #CandidateSkillValid _ matches 1 run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択中のスキルに無効な定義があります。","color":"red"}]
execute unless score #CandidateSkillValid _ matches 1 run return 0
execute if score #CandidateSkillCost _ > #CandidateSkillCapacity _ run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"このクラスでは現在のスキルコストが上限を超えます。","color":"red"}]
execute if score #CandidateSkillCost _ > #CandidateSkillCapacity _ run return 0

$data modify storage player:context this.Loadout.Class set value "$(class)"
function player_manager:stats/rebuild
data modify storage player_manager:loadout temp.display set from storage player_manager:loadout temp.class.set
function player_manager:loadout/display/class.m with storage player_manager:loadout temp.display
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"クラスを ","color":"yellow"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"aqua","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}},{"text":" に設定しました。","color":"yellow"}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
