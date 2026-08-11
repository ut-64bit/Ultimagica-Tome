#> player_manager:loadout/magic/error/full

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"魔法スロットに空きがありません。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
