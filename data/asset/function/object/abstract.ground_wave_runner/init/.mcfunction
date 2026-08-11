#> asset:object/abstract.ground_wave_runner/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

# 水平方向へ固定する
	execute align y run tp @s ~ ~ ~ ~ 0

# 召喚位置を地表へ合わせる
	execute at @s run function asset:object/abstract.ground_wave_runner/surface/find
	execute unless data storage asset:context {GroundSurfaceFound:true} run function api:common/auto_kill
	data remove storage asset:context GroundSurfaceFound
