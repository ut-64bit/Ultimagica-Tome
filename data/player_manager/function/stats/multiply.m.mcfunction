#> player_manager:stats/multiply.m
# macro: {objective:string,multiplier:int}
#
# 1000を1.0倍として、実行者の能力値へ倍率を乗算する。

$scoreboard players set #StatMultiplier _ $(multiplier)
$scoreboard players operation @s $(objective) *= #StatMultiplier _
$scoreboard players operation @s $(objective) /= #c_1000 const
