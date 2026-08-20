#> player_manager:loadout/skill/error/conflict

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"競合するスキルが選択されています: ","color":"red"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"yellow","underlined":true,"hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}},{"text":" ↔ ","color":"gray"},{"nbt":"temp.conflict.active_name","storage":"player_manager:loadout","interpret":true,"color":"yellow"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
data remove storage player_manager:loadout temp.conflict
return 0
