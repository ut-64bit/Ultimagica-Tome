#> asset:object/proj.crystal_wave_runner/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	execute if predicate asset:valid_owner_id run function asset:object/abstract.projectile/tick/get_owner
	execute if predicate asset:valid_target_id run function asset:object/abstract.projectile/tick/get_target

# 更新処理を呼び出す
	function asset:object/call.m {method:"main"}

# 再帰開始！
	execute at @s run function asset:object/proj.crystal_wave_runner/tick/start_rec

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
	execute as @n[tag=_target,distance=..1000] run tag @s remove _target
