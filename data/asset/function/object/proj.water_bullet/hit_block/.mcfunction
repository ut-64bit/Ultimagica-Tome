#> asset:object/proj.water_bullet/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle splash ~ ~ ~ 0.1 0.1 0.1 0 3 normal
	playsound item.bucket.empty neutral @a ~ ~ ~ 1.0 1.3

# 弾丸を破壊する
	function api:common/auto_kill
