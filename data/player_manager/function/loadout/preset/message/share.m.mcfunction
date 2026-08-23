#> player_manager:loadout/preset/message/share.m

$tellraw @a [{"text":"[Loadout] ","color":"light_purple"},{"selector":"@s","color":"aqua"},{"text":" が構成 $(number) を共有しました。","color":"gold"}]
playsound ui.button.click ui @s ~ ~ ~ 0.8 1.2
