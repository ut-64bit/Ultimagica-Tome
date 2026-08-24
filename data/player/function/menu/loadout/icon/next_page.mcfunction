#> player:menu/loadout/icon/next_page
# アイコン候補が13件以上ある場合、次の12件を表示するページへ進める。

tag @s remove Menu.LoadoutDeleteConfirm
execute store result score #LoadoutPresetIconCount _ run data get storage player_manager:loadout registry.preset_icon
execute unless score #LoadoutPresetIconCount _ matches 13.. run return run function player:menu/click/common/select_from_bundle

execute unless data storage player:context this.Menu.LoadoutIconPage run data modify storage player:context this.Menu.LoadoutIconPage set value 0
execute store result score #LoadoutPresetIconPage _ run data get storage player:context this.Menu.LoadoutIconPage
scoreboard players add #LoadoutPresetIconPage _ 1

scoreboard players set #LoadoutPresetIconPageSize _ 12
scoreboard players operation #LoadoutPresetIconOffset _ = #LoadoutPresetIconPage _
scoreboard players operation #LoadoutPresetIconOffset _ *= #LoadoutPresetIconPageSize _
execute if score #LoadoutPresetIconOffset _ >= #LoadoutPresetIconCount _ run scoreboard players set #LoadoutPresetIconPage _ 0
execute store result storage player:context this.Menu.LoadoutIconPage int 1 run scoreboard players get #LoadoutPresetIconPage _

playsound item.book.page_turn ui @s ~ ~ ~ 0.8 1.2
return 1
