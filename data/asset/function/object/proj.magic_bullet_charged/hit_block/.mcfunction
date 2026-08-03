#> asset:object/proj.magic_bullet_charged/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle firework ~ ~ ~ 0 0 0 0.1 5 force
	particle flash{color:-3268914} ~ ~ ~ 0 0 0 0 1 force
	playsound entity.firework_rocket.large_blast neutral @a ~ ~ ~ 1.5 1

# 弾丸を破壊する
	function api:common/auto_kill
