#> player_manager:loadout/magic/error/gap

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"前のスロットから順に設定してください。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
