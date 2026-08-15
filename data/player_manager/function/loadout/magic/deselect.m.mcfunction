#> player_manager:loadout/magic/deselect.m

function player_manager:loadout/ensure

$execute unless data storage player:context this.Loadout.Magic[{id:"$(magic)"}] run return run function player_manager:loadout/magic/error/not_selected.m {magic:"$(magic)"}
$data remove storage player:context this.Loadout.Magic[{id:"$(magic)"}]
$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"translate":"ut_magic.spell.$(magic)","color":"aqua"},{"text":" の選択を解除しました。","color":"yellow"}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
