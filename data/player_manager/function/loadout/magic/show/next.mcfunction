#> player_manager:loadout/magic/show/next

execute store result score #LoadoutMagicLimit _ run data get storage player_manager:loadout config.magic_limit
execute if score #LoadoutDisplaySlot _ > #LoadoutMagicLimit _ run return 0

execute if data storage player_manager:loadout temp.show.magic[0].id run function player_manager:loadout/magic/show/entry.m with storage player_manager:loadout temp.show.magic[0]
execute unless data storage player_manager:loadout temp.show.magic[0].id run function player_manager:loadout/magic/show/empty

data remove storage player_manager:loadout temp.show.magic[0]
scoreboard players add #LoadoutDisplaySlot _ 1
return run function player_manager:loadout/magic/show/next
