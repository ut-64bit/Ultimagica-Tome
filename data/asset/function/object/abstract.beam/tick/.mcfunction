#> asset:object/abstract.beam/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	execute if predicate asset:valid_owner_id run function asset:object/abstract.beam/tick/get_owner

# 更新処理を呼び出す
	function asset:object/call.m {method:"main"}

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
