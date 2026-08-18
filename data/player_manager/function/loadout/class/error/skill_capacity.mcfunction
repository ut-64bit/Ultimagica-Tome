#> player_manager:loadout/class/error/skill_capacity

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"このクラスでは現在のスキルコストが上限を超えます。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
