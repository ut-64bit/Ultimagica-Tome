#> asset:object/proj.thunder_spire_explosion/tick/damage

function api:damage/give_damage.m with storage api: out

execute if data storage api: out{GiveDamage:true} run function player:skill/school_thunder_mastery/ {Stacks:5}
