#> player:skill/school_crystal_mastery/
# crystal系統の射程と持続時間を伸ばす

execute unless predicate asset:valid_owner_id run return fail
scoreboard players operation $EntityID lib = @s OwnerID
function lib:entity_id/attach_tag.m {Tag:"_skill_owner"}

execute unless entity @n[tag=_skill_owner,distance=..1000] run return 0

data modify storage api: in.Skill set value "school_crystal_mastery"
execute as @p[tag=_skill_owner,distance=..1000] if function api:player/skill/has run function player:skill/school_crystal_mastery/affect

tag @n[tag=_skill_owner,distance=..1000] remove _skill_owner

return 1
