#> asset:object/proj.water_rain_rain/detect_hit_block/
#
# ブロックの衝突検知に使われるメソッド
#

# ブロックに当たったかどうか判定する
	execute summon marker run function asset:object/abstract.projectile/detect_hit_block/shaped
	execute if block ~ ~ ~ #lib:water run data modify storage asset:context IsHitBlock set value true
