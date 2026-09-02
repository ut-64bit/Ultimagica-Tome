#> asset:object/proj.water_bullet_charge/hit_entity/give_damage

function api:damage/give_damage

data modify storage api: in.Skill set value "school_water_mastery"
execute as @n[tag=_owner,distance=..1000] unless function api:player/skill/has run return fail

scoreboard players set $strength hb.Motion 3000
execute if data storage api: out{GiveDamage:true} rotated ~ 0 run function #p_motion:looking
