#> player_manager:loadout/preset/delete_at.m
# macro: {slot:int}

$data remove storage player:context this.LoadoutPresets[$(slot)]
