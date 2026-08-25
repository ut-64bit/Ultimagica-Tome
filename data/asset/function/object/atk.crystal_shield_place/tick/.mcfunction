#> asset:object/atk.crystal_shield/tick/
#
# Tick処理
#

	execute on passengers on passengers store result score #health _ run data get entity @s Health
	execute if score #health _ matches ..980 run function api:common/auto_kill
	scoreboard players reset #health _

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill
