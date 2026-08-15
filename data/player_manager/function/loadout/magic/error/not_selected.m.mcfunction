#> player_manager:loadout/magic/error/not_selected.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"選択されていません: ","color":"red"},{"translate":"ut_magic.spell.$(magic)","color":"aqua"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
