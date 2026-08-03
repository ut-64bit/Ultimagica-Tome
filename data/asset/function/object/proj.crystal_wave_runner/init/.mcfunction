#> asset:object/proj.crystal_wave_runner/init/
#
# 初期化時に呼び出されるメソッド
#

# 向きを初期化する
	execute align y run tp @s ~ ~ ~ ~ 0

# OwnerIDを設定する
	function asset:object/abstract.projectile/init/set_owner

# TargetIDを設定する
	function asset:object/abstract.projectile/init/set_target

# 残りの距離を初期化する
	data modify storage asset:context this.RemainingRange set from storage asset:context this.Range
