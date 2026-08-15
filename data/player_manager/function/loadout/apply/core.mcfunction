#> player_manager:loadout/apply/core

data modify storage player_manager:loadout temp.apply.magic set from storage player:context this.Loadout.Magic
scoreboard players set #LoadoutMagicSlot _ 0
function player_manager:loadout/magic/get_limit

function player_manager:loadout/apply/next

data remove storage player_manager:loadout temp.apply
