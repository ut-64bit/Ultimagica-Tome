#> player:menu/loadout/icon/build
# 登録済みアイコン候補から、アイコン選択用バンドルを生成する。

execute unless data storage player:context this.Menu.LoadoutIconPage run data modify storage player:context this.Menu.LoadoutIconPage set value 0
execute store result score #LoadoutPresetIconCount _ run data get storage player_manager:loadout registry.preset_icon
execute store result score #LoadoutPresetIconPage _ run data get storage player:context this.Menu.LoadoutIconPage
scoreboard players set #LoadoutPresetIconPageSize _ 12
scoreboard players operation #LoadoutPresetIconOffset _ = #LoadoutPresetIconPage _
scoreboard players operation #LoadoutPresetIconOffset _ *= #LoadoutPresetIconPageSize _

# 登録数の変更で現在ページが範囲外になった場合は、先頭ページへ戻す。
execute if score #LoadoutPresetIconOffset _ >= #LoadoutPresetIconCount _ run data modify storage player:context this.Menu.LoadoutIconPage set value 0
execute if score #LoadoutPresetIconOffset _ >= #LoadoutPresetIconCount _ run scoreboard players set #LoadoutPresetIconPage _ 0
execute if score #LoadoutPresetIconOffset _ >= #LoadoutPresetIconCount _ run scoreboard players set #LoadoutPresetIconOffset _ 0

# ツールチップへ埋め込む現在ページと総ページ数を計算する。
scoreboard players operation #LoadoutPresetIconDisplayPage _ = #LoadoutPresetIconPage _
scoreboard players add #LoadoutPresetIconDisplayPage _ 1
scoreboard players operation #LoadoutPresetIconTotalPages _ = #LoadoutPresetIconCount _
scoreboard players add #LoadoutPresetIconTotalPages _ 11
scoreboard players operation #LoadoutPresetIconTotalPages _ /= #LoadoutPresetIconPageSize _

data modify storage player_manager:loadout temp.menu_icon.queue set from storage player_manager:loadout registry.preset_icon
data modify storage player_manager:loadout temp.menu_icon.contents set value []
scoreboard players operation #LoadoutPresetIconSkip _ = #LoadoutPresetIconOffset _
function player:menu/loadout/icon/build/skip
scoreboard players set #LoadoutPresetIconSlot _ 0
function player:menu/loadout/icon/build/next

data modify storage player_manager:loadout temp.menu_icon.outer set value {outer_slot:1,title:"アイコン変更",description:"変更先のアイコンを選択",outer_model:"item_frame",contents:[],page:1,total:1}
execute if score #LoadoutPresetIconCount _ matches 13.. run data modify storage player_manager:loadout temp.menu_icon.outer.description set value "変更先を選択 / クリックで次ページ"
data modify storage player_manager:loadout temp.menu_icon.outer.contents set from storage player_manager:loadout temp.menu_icon.contents
execute store result storage player_manager:loadout temp.menu_icon.outer.page int 1 run scoreboard players get #LoadoutPresetIconDisplayPage _
execute store result storage player_manager:loadout temp.menu_icon.outer.total int 1 run scoreboard players get #LoadoutPresetIconTotalPages _
function player:menu/loadout/icon/set_bundle.m with storage player_manager:loadout temp.menu_icon.outer

data remove storage player_manager:loadout temp.menu_icon
