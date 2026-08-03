#> asset:object/force_source/init/
#
# 初期化時に呼び出されるメソッド
#

# 向きを合わせる
	tp @s ~ ~ ~ ~ ~

# OwnerIDを設定する
	execute unless data storage asset:context this.OwnerID store result storage asset:context this.OwnerID int 1 as @n[tag=_this,distance=..1000] run function lib:entity_id/get
	execute if data storage asset:context this.OwnerID store result score @s OwnerID run data get storage asset:context this.OwnerID

# 対象が設定されていなかったら、お前を殺す(ﾃﾞﾃﾞﾝ)
	execute unless data storage asset:context this.OwnerID run function api:common/auto_kill
