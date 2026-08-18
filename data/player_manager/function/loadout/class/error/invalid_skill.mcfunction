#> player_manager:loadout/class/error/invalid_skill

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択中のスキルに無効な定義があります。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
