#> player_manager:loadout/magic/show

function player_manager:loadout/ensure
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択中の魔法","color":"gold"}]

data modify storage player_manager:loadout temp.show.magic set from storage player:context this.Loadout.Magic
scoreboard players set #LoadoutDisplaySlot _ 1
function player_manager:loadout/magic/get_limit
function player_manager:loadout/magic/show/next
data remove storage player_manager:loadout temp.show
return 1
