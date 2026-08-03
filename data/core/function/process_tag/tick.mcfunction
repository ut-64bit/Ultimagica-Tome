#> core:process_tag/tick
#

execute if entity @s[tag=AutoKillWhenDieVehicle, predicate=!lib:on_vehicle] run function core:process_tag/autokill_vehicle
execute if entity @s[tag=AutoKillWhenDiePassenger, predicate=!lib:has_passenger] run function core:process_tag/autokill_passenger
