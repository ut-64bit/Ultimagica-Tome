#> player:menu/click/2/menu/loadout

execute if data storage player:context this.LoadoutPresets[0] run return run function player:menu/click/common/select_from_bundle
function player:menu/click/common/no_saved_loadout
