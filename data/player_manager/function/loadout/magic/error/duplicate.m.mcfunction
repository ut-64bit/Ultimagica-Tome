#> player_manager:loadout/magic/error/duplicate.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"すでに選択済みです: ","color":"red"},{"text":"$(magic)","color":"aqua"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
