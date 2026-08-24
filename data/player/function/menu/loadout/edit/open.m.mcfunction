#> player:menu/loadout/edit/open.m
# macro: {slot:int,number:int}

$execute unless data storage player:context this.LoadoutPresets[$(slot)].Loadout run return 0
$data modify storage player:context this.Menu.LoadoutPreset set value {slot:$(slot),number:$(number)}
data modify storage player:context this.Menu.LoadoutIconPage set value 0

# タグ
	tag @s add Menu.LoadoutEdit
	tag @s remove Menu.LoadoutDeleteConfirm

# 演出
	playsound block.smithing_table.use ui @s ~ ~ ~ 0.6 1

return 1
