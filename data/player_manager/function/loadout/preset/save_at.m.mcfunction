#> player_manager:loadout/preset/save_at.m
# macro: {slot:int}

$data modify storage player:context this.LoadoutPresets[$(slot)].Loadout set from storage player:context this.Loadout
