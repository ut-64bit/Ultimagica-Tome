#> player_manager:loadout/preset/error/full

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"保存できる構成は8件までです。","color":"red"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
data remove storage player_manager:loadout temp.preset
return 0
