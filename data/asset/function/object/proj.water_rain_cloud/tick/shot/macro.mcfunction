#> asset:object/proj.water_rain_cloud/tick/shot/.m
#

function api:clear_in
$execute positioned ~$(X) ~ ~$(Z) run function api:object/summon.m {ID:"proj.water_rain_rain"}
