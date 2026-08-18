#> player_manager:loadout/skill/message/clear

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択スキルをすべて解除しました","color":"yellow"}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
