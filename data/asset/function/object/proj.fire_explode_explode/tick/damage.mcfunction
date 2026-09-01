#> asset:object/proj.fire_explode_explode/tick/damage

function api:damage/give_damage.m with storage api: out
effect give @s slowness 1 3 true
tag @s remove _ray
