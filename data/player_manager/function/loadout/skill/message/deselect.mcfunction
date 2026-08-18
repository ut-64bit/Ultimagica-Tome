#> player_manager:loadout/skill/message/deselect

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スキルを解除しました: ","color":"yellow"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"aqua","hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}}]
playsound ui.button.click ui @s ~ ~ ~ 1 1
