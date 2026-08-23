#> player_manager:loadout/preset/icon/set_at.m
# macro: {slot:int,icon:string}

$data modify storage player:context this.LoadoutPresets[$(slot)].Icon set value "$(icon)"
