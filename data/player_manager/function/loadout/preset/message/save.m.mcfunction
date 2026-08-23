#> player_manager:loadout/preset/message/save.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"構成 $(number) に保存しました。","color":"green"}]
playsound item.armor.equip_leather ui @s ~ ~ ~ 0.8 1
