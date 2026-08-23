#> player:menu/loadout/edit/open.m
# macro: {slot:int,number:int}

$execute unless data storage player:context this.LoadoutPresets[$(slot)].Loadout run return 0
$data modify storage player:context this.Menu.LoadoutPreset set value {slot:$(slot),number:$(number)}
tag @s add Menu.LoadoutEdit
tag @s remove Menu.LoadoutDeleteConfirm
playsound block.chest.open ui @s ~ ~ ~ 0.6 1.2
return 1
