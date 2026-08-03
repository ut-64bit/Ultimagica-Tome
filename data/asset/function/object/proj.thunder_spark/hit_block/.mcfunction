#> asset:object/proj.thunder_spark/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle firework ~ ~ ~ 0 0 0 0.1 3 normal
	playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 1 1

# 弾丸を破壊する
	function api:common/auto_kill
