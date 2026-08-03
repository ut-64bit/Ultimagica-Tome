#> asset:object/proj.magic_bullet/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle instant_effect{color:16730367} ~ ~ ~ 0 0 0 0.1 5 force
	playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 1.5 1.0

# 弾丸を破壊する
	function api:common/auto_kill
