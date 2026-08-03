#> asset:object/_extends/foreach
#

# idを取得
	data modify storage asset:context id set from storage asset:object CopiedExtends[-1][0]

# レジストリに登録する
	function asset_manager:object/summon/register.m with storage asset:context

# 先頭削除
	data remove storage asset:object CopiedExtends[-1][0]

# 要素があれば再帰
	execute if data storage asset:object CopiedExtends[-1][0] run function asset:object/_extends/foreach
