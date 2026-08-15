#> asset:object/damage_indicator/tick/
#
# Tick処理
#

scoreboard players add @s General.Tick 1
execute if score @s General.Tick matches 10.. run function api:common/auto_kill
