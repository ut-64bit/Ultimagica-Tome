#> asset:object/force_source/tick/
#
# 毎tick呼び出されるメソッド
#

function asset:object/interface.attackable/get_owner

# 対象がいなかったらオブジェクトを削除する
	execute unless entity @n[tag=_owner,distance=..1000] run function api:common/auto_kill

# 常にターゲットの場所に移動する
	execute at @n[tag=_owner,distance=..1000] run tp @s ~ ~ ~

# 力(物理)を与える
	execute as @n[tag=_owner,distance=..1000] positioned as @s run function asset:object/force_source/tick/add_force

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill

# あとしまつ
	tag @n[tag=_owner,distance=..1000] remove _owner
