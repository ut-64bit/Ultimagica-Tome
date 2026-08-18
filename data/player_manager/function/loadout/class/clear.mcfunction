#> player_manager:loadout/class/clear

function player_manager:loadout/ensure
data modify storage player:context this.Loadout.Class set value ""
data modify storage player:context this.Loadout.Skills set value []
function player_manager:stats/rebuild
function player_manager:loadout/class/message/clear
return 1
