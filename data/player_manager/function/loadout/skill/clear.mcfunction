#> player_manager:loadout/skill/clear

function player_manager:loadout/ensure
data modify storage player:context this.Loadout.Skills set value []
function player_manager:stats/rebuild
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択スキルをすべて解除しました","color":"yellow"}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
