#> asset:object/proj.holy_judgement_light/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
particle end_rod ^0 ^-1 ^ 0 0 0 0 1 normal
particle end_rod ^0.95106 ^-0.30902 ^ 0 0 0 0 1 normal
particle end_rod ^0.58779 ^0.80902 ^ 0 0 0 0 1 normal
particle end_rod ^-0.58779 ^0.80902 ^ 0 0 0 0 1 normal
particle end_rod ^-0.95106 ^-0.30902 ^ 0 0 0 0 1 normal

	playsound entity.generic.extinguish_fire player @a ~ ~ ~ 0.25 2

# 弾丸を破壊する
	function api:common/auto_kill
