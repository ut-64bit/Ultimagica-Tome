#> player_manager:loadout/skill/error/invalid_cost

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スキルコストの定義が無効です。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
