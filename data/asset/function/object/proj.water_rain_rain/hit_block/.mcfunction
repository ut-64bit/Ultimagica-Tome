#> asset:object/proj.water_rain_rain/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle splash ~ ~ ~ 1 0 1 0 5 normal
	playsound block.pointed_dripstone.drip_water neutral @a ~ ~ ~ 1.0 0.9
	playsound block.pointed_dripstone.drip_water neutral @a ~ ~ ~ 1.0 1
	playsound block.pointed_dripstone.drip_water neutral @a ~ ~ ~ 1.0 1.1

# 弾丸を破壊する
	function api:common/auto_kill
