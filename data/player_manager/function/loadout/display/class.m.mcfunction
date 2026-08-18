#> player_manager:loadout/display/class.m
# macro: {id:string}

$data modify storage player_manager:loadout temp.display.name set value {translate:"ut_magic.class.$(id)"}
execute unless data storage player_manager:loadout temp.display.description run data modify storage player_manager:loadout temp.display.description set value {text:"説明はありません。",color:"gray"}
