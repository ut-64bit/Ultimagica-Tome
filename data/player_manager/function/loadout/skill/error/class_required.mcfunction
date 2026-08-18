#> player_manager:loadout/skill/error/class_required

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"先にクラスを選択してください。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
