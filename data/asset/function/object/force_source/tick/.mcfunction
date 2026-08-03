#> asset:object/force_source/tick/
#
# 毎tick呼び出されるメソッド
#

# 対象を取得する
	scoreboard players operation $EntityID lib = @s OwnerID
	function lib:entity_id/attach_tag.m {Tag:"_target"}

# 対象がいなかったらオブジェクトを削除する
	execute unless entity @n[tag=_target,distance=..1000] run function api:common/auto_kill

# 力(物理)を与える
	execute as @n[tag=_target,distance=..1000] run function asset:object/force_source/tick/add_force

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill

# あとしまつ
	tag @n[tag=_target,distance=..1000] remove _target
