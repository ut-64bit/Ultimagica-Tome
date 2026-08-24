#> player:menu/reset
# @within function player:menu/tick

# タグリセット
	tag @s remove Menu.Preset
	tag @s remove Menu.Loadout
	tag @s remove Menu.LoadoutEdit
	tag @s remove Menu.LoadoutDeleteConfirm
	data remove storage player:context this.Menu.LoadoutPreset
	data remove storage player:context this.Menu.LoadoutIconPage

# 更新
	function player:menu/update
