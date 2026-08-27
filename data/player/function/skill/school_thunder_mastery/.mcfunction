#> player:skill/school_thunder_mastery/

execute unless entity @p[tag=_owner,distance=..1000] run return 0

data modify storage api: in.Skill set value "school_thunder_mastery"
execute as @p[tag=_owner,distance=..1000] unless function api:player/skill/has run return fail

$execute if entity @s[type=player] run function api:effect/give_with.m {ID:"skill_thunder_stacker",Field:{StackIncrease:$(Stacks)}}
