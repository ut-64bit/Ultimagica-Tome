#> asset:object/proj.holy_shot/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle end_rod ~ ~ ~ 0 0 0 0 1 force
	playsound item.trident.hit_ground neutral @a ~ ~ ~ 1.5 1

# 弾丸を破壊する
	function api:common/auto_kill
