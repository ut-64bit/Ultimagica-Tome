#> asset:object/proj.water_rain_cloud/tick/shot/.m
#

function api:clear_in
$execute positioned ^ ^ ^$(Z) run function api:object/summon.m {ID:"proj.water_rain_rain"}
$execute positioned ^ ^ ^-$(Z) run function api:object/summon.m {ID:"proj.water_rain_rain"}
