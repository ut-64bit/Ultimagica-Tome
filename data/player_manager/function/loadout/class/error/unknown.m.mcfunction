#> player_manager:loadout/class/error/unknown.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"不明なクラスです: ","color":"red"},{"text":"$(class)","color":"yellow"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
