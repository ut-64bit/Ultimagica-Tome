#> player_manager:loadout/class/clear

function player_manager:loadout/ensure
data modify storage player:context this.Loadout.Class set value ""
data modify storage player:context this.Loadout.Skills set value []
function player_manager:stats/rebuild
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"クラスと選択スキルを解除しました。","color":"yellow"}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
