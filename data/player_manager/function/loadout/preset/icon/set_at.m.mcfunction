#> player_manager:loadout/preset/icon/set_at.m
# 指定スロットの構成アイコンを書き換える。
# macro: {slot:int,icon:string}

$data modify storage player:context this.LoadoutPresets[$(slot)].Icon set value "$(icon)"
