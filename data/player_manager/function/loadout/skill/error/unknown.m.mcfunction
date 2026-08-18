#> player_manager:loadout/skill/error/unknown.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"不明なスキルです: ","color":"red"},{"text":"$(skill)","color":"yellow"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
