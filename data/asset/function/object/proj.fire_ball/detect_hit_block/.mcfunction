#> asset:object/proj.fire_ball/detect_hit_block/
#
# ブロックの衝突検知に使われるメソッド
#

# ブロックに当たったかどうか判定する
	execute unless data storage asset:context {IsHitBlock:true} positioned ^0.3 ^0.3 ^ run function asset:object/abstract.projectile/detect_hit_block/
	execute unless data storage asset:context {IsHitBlock:true} positioned ^0.3 ^-.3 ^ run function asset:object/abstract.projectile/detect_hit_block/
	execute unless data storage asset:context {IsHitBlock:true} positioned ^-.3 ^0.3 ^ run function asset:object/abstract.projectile/detect_hit_block/
	execute unless data storage asset:context {IsHitBlock:true} positioned ^-.3 ^-.3 ^ run function asset:object/abstract.projectile/detect_hit_block/
