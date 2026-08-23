#> player_manager:loadout/preset/get_at.m
# macro: {slot:int}

$data modify storage player_manager:loadout temp.preset.current set from storage player:context this.LoadoutPresets[$(slot)]
