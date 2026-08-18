#> player:skill/capacity_expansion/apply
#
# 全属性のHP被ダメージを1.2倍にし、スキルコスト上限を1増やす。
# GP消費は倍率計算を通らないため変化しない。

function player_manager:stats/multiply.m {objective:"DamageTaken.physical",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.magic",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.light",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.holy",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.fire",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.thunder",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.wind",multiplier:1200}
function player_manager:stats/multiply.m {objective:"DamageTaken.water",multiplier:1200}
scoreboard players add @s SkillCapacity 1
