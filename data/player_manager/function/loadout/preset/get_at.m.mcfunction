#> player_manager:loadout/preset/get_at.m
# 指定スロットの保存済み構成を一時ストレージへ取得する。
# macro: {slot:int}

$data modify storage player_manager:loadout temp.preset.current set from storage player:context this.LoadoutPresets[$(slot)]
