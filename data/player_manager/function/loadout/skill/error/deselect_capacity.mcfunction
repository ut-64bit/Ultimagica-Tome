#> player_manager:loadout/skill/error/deselect_capacity

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"このスキルを外すとコスト上限を超えます。先にほかのスキルを解除してください。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
