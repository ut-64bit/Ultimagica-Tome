#> player_manager:loadout/preset/share/skill_entry.m
# 共有する構成のスキル1件を表示する。
# macro: {id:string}

$tellraw @a [{"text":"    - ","color":"gray"},{"translate":"ut_magic.skill.$(id)","color":"light_purple"}]
