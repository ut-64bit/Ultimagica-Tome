#> player_manager:effect/operation/give/finalize

execute if data storage effect:context Current{Removed:true} run data modify storage effect:context Reason set value "self"
execute if data storage effect:context Current{Removed:true} run function player_manager:effect/dispatch {Event:"remove"}
execute if data storage effect:context Current{Removed:true} run data remove storage effect:context Reason
execute if data storage effect:context Current{Removed:true} run return 0

execute if data storage effect:context Current{Duration:0} run data modify storage effect:context Reason set value "expired"
execute if data storage effect:context Current{Duration:0} run function player_manager:effect/dispatch {Event:"end"}
execute if data storage effect:context Current{Duration:0} run data remove storage effect:context Reason
execute if data storage effect:context Current{Duration:0} run return 0

data modify storage player:context this.Effects append from storage effect:context Current
return 1
