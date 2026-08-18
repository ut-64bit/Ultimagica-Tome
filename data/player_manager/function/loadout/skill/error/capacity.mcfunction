#> player_manager:loadout/skill/error/capacity

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スキルコストが上限を超えます: ","color":"red"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"yellow","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}},{"text":"  使用コスト: ","color":"gray"},{"nbt":"temp.display.cost","storage":"player_manager:loadout","color":"yellow"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
