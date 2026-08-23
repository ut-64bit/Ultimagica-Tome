#> player_manager:loadout/preset/message/icon.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"構成 $(number) のアイコンを変更しました。","color":"green"}]
playsound ui.button.click ui @s ~ ~ ~ 0.8 1.4
