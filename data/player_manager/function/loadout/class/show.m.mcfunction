#> player_manager:loadout/class/show.m
# macro: {Class:string}

data remove storage player_manager:loadout temp.display
$data modify storage player_manager:loadout temp.display set from storage player_manager:loadout registry.class[{id:"$(Class)"}]
function player_manager:loadout/display/class.m with storage player_manager:loadout temp.display
tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"クラス: ","color":"gray"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"aqua","underlined":true,"hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}},{"text":"  スキルコスト: ","color":"gray"},{"score":{"name":"@s","objective":"SkillCost"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"SkillCapacity"},"color":"yellow"}]
return 1
