#> player_manager:loadout/preset/delete_at.m
# 指定スロットの保存済み構成をリストから削除する。
# macro: {slot:int}

$data remove storage player:context this.LoadoutPresets[$(slot)]
