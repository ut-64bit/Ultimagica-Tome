#> player_manager:loadout/preset/icon/select.m
# 登録済み候補の指定位置からアイコンを取得し、編集中の構成へ設定する。
# macro: {slot:int}

$execute unless data storage player_manager:loadout registry.preset_icon[$(slot)].icon run return 0
$data modify storage player_manager:loadout temp.preset.icon_candidate set from storage player_manager:loadout registry.preset_icon[$(slot)]
return run function player_manager:loadout/preset/icon/set.m with storage player_manager:loadout temp.preset.icon_candidate
