#> asset:object/abstract.projectile/init/
#
# 初期化時に呼び出されるメソッド
#

# 向きを初期化する
	tp @s ~ ~ ~ ~ ~

# tp補間を有効にする
	data modify entity @s teleport_duration set value 1

# OwnerIDを設定する
	function asset:object/abstract.projectile/init/set_owner

# TargetIDを設定する
	function asset:object/abstract.projectile/init/set_target

# 残りの距離を初期化する
	data modify storage asset:context this.RemainingRange set from storage asset:context this.Range

# tag
	tag @s add Object.projectile
