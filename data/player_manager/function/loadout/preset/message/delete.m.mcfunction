#> player_manager:loadout/preset/message/delete.m
# 構成を削除したことをプレイヤーへ通知する。

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"構成 $(number) を削除しました。","color":"yellow"}]
playsound block.fire.extinguish ui @s ~ ~ ~ 0.8 1.2
