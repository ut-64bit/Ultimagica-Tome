#> player_manager:loadout/preset/share/magic_entry.m
# 共有する構成の魔法1件を表示する。
# macro: {id:string}

$tellraw @a [{"text":"    - ","color":"gray"},{"translate":"ut_magic.spell.$(id)","color":"aqua"}]
