#> player_manager:loadout/skill/error/slot

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"指定されたスキル番号は使用できません。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
