#> player_manager:loadout/class/message/set

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"クラスを ","color":"yellow"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"aqua","underlined":true,"hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}},{"text":" に設定しました。","color":"yellow"}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
