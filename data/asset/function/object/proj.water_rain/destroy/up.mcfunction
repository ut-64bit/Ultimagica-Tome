#> asset:object/proj.water_rain/destroy/up
#

function api:clear_in
execute store result storage api: in.FieldOverride.Range int -4 run scoreboard players remove #t_Height _ 10
function api:object/summon.m {ID:"proj.water_rain_up"}
