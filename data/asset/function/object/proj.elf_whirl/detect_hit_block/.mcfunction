#> asset:object/abstract.projectile/detect_hit_block/
#
# ブロックの衝突検知に使われるメソッド
#

# ブロックに当たったかどうか判定する
	execute positioned ^ ^1 ^ run function asset:object/abstract.projectile/detect_hit_block/
	data modify storage asset:context IsHitBlock1 set from storage asset:context IsHitBlock
	data remove storage asset:context IsHitBlock
	execute positioned ^ ^-1 ^ run function asset:object/abstract.projectile/detect_hit_block/
	data modify storage asset:context IsHitBlock2 set from storage asset:context IsHitBlock
	data remove storage asset:context IsHitBlock

	execute if data storage asset:context {IsHitBlock1:true, IsHitBlock2:true} run data modify storage asset:context IsHitBlock set value true

	data remove storage asset:context IsHitBlock1
	data remove storage asset:context IsHitBlock2
