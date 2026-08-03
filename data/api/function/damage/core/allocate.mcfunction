#> api:damage/core/allocate
#
# AttackIDを生成する
#

scoreboard players add #g_AttackID Global 1
execute if score #g_AttackID Global matches 0 run scoreboard players set #g_AttackID Global 1

return run scoreboard players get #g_AttackID Global
