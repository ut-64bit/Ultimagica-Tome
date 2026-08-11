#> player_manager:loadout/magic/error/unknown.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"未登録の魔法です: ","color":"red"},{"text":"$(magic)","color":"aqua"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
