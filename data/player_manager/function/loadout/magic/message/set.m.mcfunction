#> player_manager:loadout/magic/message/set.m

$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スロット $(slot): ","color":"gray"},{"translate":"ut_magic.spell.$(id)","color":"aqua"},{"text":" に設定しました。","color":"green"}]
