#> player_manager:loadout/skill/show/load_class.m
# macro: {Class:string}

$data modify storage player_manager:loadout temp.show.class set from storage player_manager:loadout registry.class[{id:"$(Class)"}]
