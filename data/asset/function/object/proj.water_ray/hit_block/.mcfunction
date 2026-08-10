#> asset:object/proj.water_ray/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle splash ~ ~ ~ 0.1 0.1 0.1 0 1 normal
	playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a ~ ~ ~ 1.0 1.0

# 弾丸を破壊する
	function api:common/auto_kill
