#> player_manager:loadout/preset/message/load.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"構成 $(number) を呼び出しました。","color":"green"}]
playsound item.armor.equip_iron ui @s ~ ~ ~ 0.8 1
