#> asset:object/atk.crystal_shield/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner
execute as @n[tag=_owner,distance=..1000] positioned as @s anchored eyes run tp @n[tag=_this,distance=..1000] ^ ^ ^2.5 ~ ~
tag @n[tag=_owner,distance=..1000] remove _owner

execute on passengers on passengers store result score #health _ run data get entity @s Health
execute if score #health _ matches ..990 run function api:common/auto_kill
scoreboard players reset #health _

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill
