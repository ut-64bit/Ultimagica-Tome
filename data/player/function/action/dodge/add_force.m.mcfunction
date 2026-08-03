#> player:action/dodge/add_force.m
#

data modify storage api: in.FieldOverride set value { Power:0.95, Duration:4 }
execute if predicate lib:flag/sprinting run data modify storage api: in.FieldOverride set value { Power:0.8, Duration:4 }
execute unless predicate lib:flag/on_ground run data modify storage api: in.FieldOverride set value { Power:0.6, Duration:4 }

function lib:motion/reset

$execute rotated ~ 0 facing ^$(X) ^ ^$(Z) run function api:object/summon.m {ID:"force_source"}
