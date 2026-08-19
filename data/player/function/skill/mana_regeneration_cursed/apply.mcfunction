#> player:skill/mana_regeneration_cursed/apply
#
# MP回復速度を1.75倍にし、最大MPを50減らす。

function player_manager:stats/multiply.m {objective:"StaminaRecoverSpeed",multiplier:1750}
scoreboard players remove @s MaxStamina 50000
scoreboard players remove @s MPRecoverDelay 10
