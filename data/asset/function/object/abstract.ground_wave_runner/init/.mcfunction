#> asset:object/abstract.ground_wave_runner/init/
#
# 初期化時に呼び出されるメソッド
#

# 水平方向へ固定する
	execute at @s run tp @s ~ ~ ~ ~ 0

# 所有者と対象を記録する
	function asset:object/abstract.projectile/init/set_owner
	function asset:object/abstract.projectile/init/set_target

# 残りの移動回数を初期化する
	data modify storage asset:context this.RemainingRange set from storage asset:context this.Range

# 召喚位置を地表へ合わせる
	execute at @s run function asset:object/abstract.ground_wave_runner/surface/find
	execute unless data storage asset:context {GroundSurfaceFound:true} run function api:common/auto_kill
	data remove storage asset:context GroundSurfaceFound
