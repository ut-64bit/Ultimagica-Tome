#> asset:object/abstract.physical_projectile/init/
#
# 初期化時に呼び出されるメソッド
#

# 向きを合わせる
	tp @s ~ ~ ~ ~ ~

# tp補間
	data modify entity @s teleport_duration set value 1

# OwnerIDを設定する
	execute unless data storage asset:context this.OwnerID store result storage asset:context this.OwnerID int 1 as @n[tag=_this,distance=..1000] run function lib:entity_id/get
	execute if data storage asset:context this.OwnerID store result score @s OwnerID run data get storage asset:context this.OwnerID

# 残りの距離を初期化する
	data modify storage asset:context this.RemainingRange set from storage asset:context this.Range

# 初速を設定する
	function asset:object/abstract.physical_projectile/init/set_velocity.m with storage asset:context this
