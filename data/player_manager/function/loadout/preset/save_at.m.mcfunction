#> player_manager:loadout/preset/save_at.m
# 現在のロードアウトを指定された構成スロットへ保存する。
# macro: {slot:int}

$data modify storage player:context this.LoadoutPresets[$(slot)].Loadout set from storage player:context this.Loadout
