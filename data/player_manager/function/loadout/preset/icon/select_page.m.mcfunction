#> player_manager:loadout/preset/icon/select_page.m
# 現在のページとページ内位置から、登録一覧上のアイコン位置を計算して設定する。
# macro: {slot:int}

scoreboard players set #LoadoutPresetIconPage _ 0
execute if data storage player:context this.Menu.LoadoutIconPage store result score #LoadoutPresetIconPage _ run data get storage player:context this.Menu.LoadoutIconPage
scoreboard players set #LoadoutPresetIconPageSize _ 12
scoreboard players operation #LoadoutPresetIconAbsolute _ = #LoadoutPresetIconPage _
scoreboard players operation #LoadoutPresetIconAbsolute _ *= #LoadoutPresetIconPageSize _
$scoreboard players add #LoadoutPresetIconAbsolute _ $(slot)
execute store result storage player_manager:loadout temp.preset.icon_select.slot int 1 run scoreboard players get #LoadoutPresetIconAbsolute _
return run function player_manager:loadout/preset/icon/select.m with storage player_manager:loadout temp.preset.icon_select
