#> asset:object/atk.crystal_shield/tick/
#
# Tick処理
#

scoreboard players add @s General.Tick 1

function asset:object/interface.attackable/get_owner
execute as @n[tag=_owner,distance=..1000] at @s anchored eyes rotated as @n[tag=_this,distance=..1000] run tp @n[tag=_this,distance=..1000] ^ ^ ^2.5 ~ ~
tag @n[tag=_owner,distance=..1000] remove _owner

    execute on passengers on passengers store result score #health _ run data get entity @s Health
    execute if score #health _ matches ..990 run function api:common/auto_kill
    scoreboard players reset #health _

execute if score @s General.Tick matches 400.. run function api:common/auto_kill
