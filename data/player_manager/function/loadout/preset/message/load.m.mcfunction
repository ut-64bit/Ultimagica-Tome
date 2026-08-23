#> player_manager:loadout/preset/message/load.m
# 構成を呼び出したことをプレイヤーへ通知する。

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"構成 $(number) を呼び出しました。","color":"green"}]
playsound item.armor.equip_iron ui @s ~ ~ ~ 0.8 1
