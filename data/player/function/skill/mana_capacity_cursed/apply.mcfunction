#> player:skill/mana_capacity_cursed/apply
#
# 最大MPを30増やし、MP回復速度を0.6倍にする。
# MP消費後、自然回復が始まるまでの時間を40tickから20tickへ短縮する。

scoreboard players add @s MaxStamina 30000
function player_manager:stats/multiply.m {objective:"StaminaRecoverSpeed",multiplier:600}
