#> asset:object/abstract.physical_projectile/detect_hit_block/
#
# ブロックの衝突検知に使われるメソッド
#

# ブロックに当たったかどうか判定する
	execute unless block ~ ~ ~ #lib:no_collision run data modify storage asset:context IsHitBlock set value true
