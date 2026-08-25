#> asset:object/proj.holy_spire/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# ブロックに刺さったまま止まる
	tp @s ^ ^ ^-0.4
	data modify storage asset:context this.State set value "block_idle"
	data modify storage asset:context StopMove set value true

# 演出
	playsound item.trident.hit_ground neutral @a ~ ~ ~ 1.5 1
