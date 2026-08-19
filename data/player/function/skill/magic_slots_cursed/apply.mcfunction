#> player:skill/magic_slots_cursed/apply
#
# 魔法枠を1つ増やし、全属性のHP被ダメージを1.2倍にする。

scoreboard players add @s MagicSlots 1
function player_manager:stats/multiply.m {objective:"DamageTaken.physical",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.magic",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.light",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.holy",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.fire",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.thunder",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.wind",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.water",multiplier:1200}
