#> player_manager:loadout/preset/error/slot

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"指定された構成は保存されていません。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
data remove storage player_manager:loadout temp.preset
return 0
