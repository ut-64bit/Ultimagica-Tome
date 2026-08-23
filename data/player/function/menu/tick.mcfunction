#> player:menu/tick
#

# メニューのクリック検知
	execute unless items entity @s player.crafting.0 *[custom_data~{slot:0}] if items entity @s player.crafting.1 *[custom_data~{slot:1}] if items entity @s player.crafting.2 *[custom_data~{slot:2}] if items entity @s player.crafting.3 *[custom_data~{slot:3}] run function player:menu/click/0/
	execute unless items entity @s player.crafting.1 *[custom_data~{slot:1}] if items entity @s player.crafting.0 *[custom_data~{slot:0}] if items entity @s player.crafting.2 *[custom_data~{slot:2}] if items entity @s player.crafting.3 *[custom_data~{slot:3}] run function player:menu/click/1/
	execute unless items entity @s player.crafting.2 *[custom_data~{slot:2}] if items entity @s player.crafting.0 *[custom_data~{slot:0}] if items entity @s player.crafting.1 *[custom_data~{slot:1}] if items entity @s player.crafting.3 *[custom_data~{slot:3}] run function player:menu/click/2/
	execute unless items entity @s player.crafting.3 *[custom_data~{slot:3}] if items entity @s player.crafting.0 *[custom_data~{slot:0}] if items entity @s player.crafting.1 *[custom_data~{slot:1}] if items entity @s player.crafting.2 *[custom_data~{slot:2}] run function player:menu/click/3/

# バンドルから選択したときの処理
	# execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"team_select"}}] run function player:menu/click/0/select/team_select/
	execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_save"}}] run function player:menu/loadout/select/save
	execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_load"}}] run function player:menu/loadout/select/load
	execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_edit"}}] run function player:menu/loadout/select/edit
	execute if items entity @s player.cursor structure_void[custom_data~{menu:{id:"loadout_preset_icon"}}] run function player:menu/loadout/select/icon

# インベントリを閉じたときの処理
	execute unless items entity @s player.crafting.0 *[custom_data~{slot:0}] unless items entity @s player.crafting.1 *[custom_data~{slot:1}] unless items entity @s player.crafting.2 *[custom_data~{slot:2}] unless items entity @s player.crafting.3 *[custom_data~{slot:3}] run function player:menu/reset
