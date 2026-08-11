#> player_manager:loadout/magic/clear

function player_manager:loadout/ensure
data modify storage player:context this.Loadout.Magic set value []
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"魔法をすべて解除しました。","color":"yellow"}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
