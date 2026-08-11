#> player_manager:loadout/apply/give.m

$execute if data storage player_manager:loadout registry.magic[{id:"$(id)"}] run loot replace entity @s hotbar.$(slot) loot asset:$(id)
