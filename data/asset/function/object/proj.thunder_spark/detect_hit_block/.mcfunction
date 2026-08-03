#> asset:object/proj.thunder_spark/detect_hit_block/
#
# ブロックの衝突検知に使われるメソッド
#

function asset:object/super.method

# ブロックに当たったかどうか判定する
	execute if block ~ ~ ~ #lib:water run data modify storage asset:context IsHitBlock set value true
