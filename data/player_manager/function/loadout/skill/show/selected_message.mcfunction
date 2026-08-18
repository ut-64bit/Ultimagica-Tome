#> player_manager:loadout/skill/show/selected_message

tellraw @s [{"text":"    - ","color":"gray"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"aqua","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}},{"text":"  cost: ","color":"yellow"},{"nbt":"temp.display.cost","storage":"player_manager:loadout","color":"yellow"}]
