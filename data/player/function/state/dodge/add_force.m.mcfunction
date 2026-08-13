#> player:state/dodge/add_force.m
#

function lib:motion/reset

data modify storage api: in.FieldOverride set value { Power:0.8, Duration:6 }
execute if predicate lib:flag/sprinting run data modify storage api: in.FieldOverride set value { Power:0.7, Duration:6 }
execute unless predicate lib:flag/on_ground run data modify storage api: in.FieldOverride set value { Power:0.6, Duration:6 }
$execute rotated ~ 0 facing ^$(X) ^ ^$(Z) run function api:object/summon.m {ID:"force_source"}
