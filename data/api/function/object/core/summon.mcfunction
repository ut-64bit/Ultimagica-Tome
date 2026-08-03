#> api:object/core/summon
#

# contextを退避する
	function asset_manager:common/id/stash
	function asset_manager:common/origin_id/stash
	function asset_manager:common/this/stash


# id
	data modify storage asset:context id set from storage api: in.ID

# レジストリにデータを登録する
	function asset_manager:object/summon/register.m with storage asset:context

# validate
	execute unless data storage asset:object ID run return fail
	execute if data storage asset:object {IsAbstract:true} run tellraw @a {text:"[ERROR:\"api:object/core/summon\"] 抽象クラスを直接召喚しないでください",color:"dark_red"}

# originID
	data modify storage asset:context originID set from storage asset:object ID

# フィールド設定
	data modify storage asset:context this set from storage asset:object Field
	data modify storage asset:context this merge from storage api: in.FieldOverride

# あとしまつ
	data remove storage asset:object ID
	data remove storage asset:object Extends
	data remove storage asset:object IsAbstract
	data remove storage asset:object Field


# 召喚する
	function asset_manager:object/summon/

# 初期化する
	execute as @e[tag=_init,distance=..1] run function asset_manager:object/summon/init


# 退避したcontextを戻す
	function asset_manager:common/id/pop
	function asset_manager:common/origin_id/pop
	function asset_manager:common/this/pop
