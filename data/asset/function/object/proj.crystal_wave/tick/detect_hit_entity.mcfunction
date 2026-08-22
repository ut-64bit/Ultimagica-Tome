#> asset:object/proj.crystal_wave/tick/detect_hit_entity

function lib:interval/ {Tick:5,Offset:15}
execute if score $Interval _ matches 0 run function asset:object/call.m {method:"detect_hit_entity"}
execute if score $Interval _ matches 0 if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
execute if score $Interval _ matches 0 run data remove storage asset:context IsHitEntity
