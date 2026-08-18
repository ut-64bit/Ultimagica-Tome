#> player_manager:loadout/class/set.m
# macro: {class:string}

function player_manager:loadout/ensure
function player_manager:stats/rebuild
data remove storage player_manager:loadout temp.class.set
$data modify storage player_manager:loadout temp.class.set set from storage player_manager:loadout registry.class[{id:"$(class)"}]
$execute unless data storage player_manager:loadout temp.class.set run return run function player_manager:loadout/class/error/unknown.m {class:"$(class)"}

data modify storage player_manager:loadout temp.cost.class set from storage player_manager:loadout temp.class.set
function player_manager:loadout/skill/cost/for_class
scoreboard players set #CandidateSkillCapacity _ 0
execute if data storage player_manager:loadout temp.class.set.skill_capacity store result score #CandidateSkillCapacity _ run data get storage player_manager:loadout temp.class.set.skill_capacity
scoreboard players operation #CandidateSkillCapacity _ += #CandidateSkillCapacityBonus _
execute if score #CandidateSkillCapacity _ matches ..-1 run scoreboard players set #CandidateSkillCapacity _ 0

execute unless score #CandidateSkillValid _ matches 1 run return run function player_manager:loadout/class/error/invalid_skill
execute if score #CandidateSkillCost _ > #CandidateSkillCapacity _ run return run function player_manager:loadout/class/error/skill_capacity

$data modify storage player:context this.Loadout.Class set value "$(class)"
function player_manager:stats/rebuild
data modify storage player_manager:loadout temp.display set from storage player_manager:loadout temp.class.set
function player_manager:loadout/display/class.m with storage player_manager:loadout temp.display
function player_manager:loadout/class/message/set
return 1
