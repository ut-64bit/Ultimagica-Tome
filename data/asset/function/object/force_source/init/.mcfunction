#> asset:object/force_source/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# 対象が設定されていなかったら、お前を殺す(ﾃﾞﾃﾞﾝ)
	execute unless data storage asset:context this.OwnerID run function api:common/auto_kill

# 向きを合わせる
	tp @s ~ ~ ~ ~ ~
