#> player:menu/loadout/edit/delete

execute store result score #LoadoutPresetResult _ run function player_manager:loadout/preset/delete.m with storage player:context this.Menu.LoadoutPreset
execute unless score #LoadoutPresetResult _ matches 1 run return 0

tag @s remove Menu.LoadoutEdit
tag @s remove Menu.LoadoutDeleteConfirm
data remove storage player:context this.Menu.LoadoutPreset
return 1
