#> player_manager:loadout/skill/clear

function player_manager:loadout/ensure
data modify storage player:context this.Loadout.Skills set value []
function player_manager:stats/rebuild
function player_manager:loadout/skill/message/clear
return 1
