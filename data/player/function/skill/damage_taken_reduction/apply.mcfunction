#> player:skill/damage_taken_reduction/apply
#
# 全属性のHP被ダメージを0.85倍にする。

function player_manager:stats/multiply.m {objective:"DamageTaken.physical",multiplier:850}
function player_manager:stats/multiply.m {objective:"DamageTaken.magic",multiplier:850}
function player_manager:stats/multiply.m {objective:"DamageTaken.light",multiplier:850}
function player_manager:stats/multiply.m {objective:"DamageTaken.holy",multiplier:850}
function player_manager:stats/multiply.m {objective:"DamageTaken.fire",multiplier:850}
function player_manager:stats/multiply.m {objective:"DamageTaken.thunder",multiplier:850}
function player_manager:stats/multiply.m {objective:"DamageTaken.wind",multiplier:850}
function player_manager:stats/multiply.m {objective:"DamageTaken.water",multiplier:850}
