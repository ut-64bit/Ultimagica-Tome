#> asset:object/_extends/
#

# レジストリに登録する
	# IDからレジストリを呼び出す
	data modify storage api: in.AssetID set from storage asset:context id
	function api:registry/please

	# データを保存する
	data modify storage registry: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends set from storage asset:object Extends

# idを退避させる
	function asset_manager:common/id/stash

# 再帰で使うために継承の情報を取得する
	data modify storage asset:object CopiedExtends append value []
	data modify storage asset:object CopiedExtends[-1] set from storage asset:object Extends

# 無限ループ防止のためにExtendsを削除する
	data remove storage asset:object Extends

# 継承したIDを一つずつ辿っていく
	execute if data storage asset:object CopiedExtends[-1][0] run function asset:object/_extends/foreach

# リセット
	data remove storage asset:object CopiedExtends[-1]
	data remove storage asset:object Extends

# 退避させたidを戻す
	function asset_manager:common/id/pop
