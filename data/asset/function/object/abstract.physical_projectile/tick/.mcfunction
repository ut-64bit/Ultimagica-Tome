#> asset:object/abstract.physical_projectile/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	execute if predicate asset:valid_owner_id run function asset:object/abstract.physical_projectile/tick/get_owner

# 更新処理を呼び出す
	function asset:object/call.m {method:"main"}

# 再帰開始！
	function asset:object/abstract.physical_projectile/tick/start_rec.m with storage asset:context this

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
