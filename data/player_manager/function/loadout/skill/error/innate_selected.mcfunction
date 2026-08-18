#> player_manager:loadout/skill/error/innate_selected

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"このスキルはクラスの固有スキルです: ","color":"red"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"yellow","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
