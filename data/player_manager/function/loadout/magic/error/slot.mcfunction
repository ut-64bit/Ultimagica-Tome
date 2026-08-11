#> player_manager:loadout/magic/error/slot

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"指定されたスロットは使用できません。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
