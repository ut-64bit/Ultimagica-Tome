#> asset:object/proj.fire_shot/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle flame ~ ~ ~ 0 0 0 0.1 3 normal
	particle smoke ~ ~ ~ 0.1 0.1 0.1 0 3 normal
	playsound block.fire.extinguish neutral @a ~ ~ ~ 1 1.5

# 弾丸を破壊する
	function api:common/auto_kill
