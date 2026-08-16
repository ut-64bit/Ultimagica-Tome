#> asset:object/atk.crystal_shield/tick/
#
# Tick処理
#

scoreboard players add @s General.Tick 1

    execute on passengers on passengers store result score #health _ run data get entity @s Health
    execute if score #health _ matches ..980 run function api:common/auto_kill
    scoreboard players reset #health _

execute if score @s General.Tick matches 400.. run function api:common/auto_kill
