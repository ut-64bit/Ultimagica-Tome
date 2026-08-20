#> player_manager:loadout/skill/show/innate_entry.m
# macro: {id:string}

$data modify storage player_manager:loadout temp.display set value {id:"$(id)"}
$data modify storage player_manager:loadout temp.display set from storage player_manager:loadout registry.skill[{id:"$(id)"}]
function player_manager:loadout/display/skill.m with storage player_manager:loadout temp.display
tellraw @s [{"text":"    - ","color":"gray"},{"nbt":"temp.display.name","storage":"player_manager:loadout","interpret":true,"color":"gold","underlined":true,"hover_event":{"action":"show_text","value":{"nbt":"temp.display.description","storage":"player_manager:loadout","interpret":true}}},{"text":"  cost: 0","color":"green"}]
