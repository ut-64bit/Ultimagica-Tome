#> asset:object/proj.wind_whirl/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

data modify storage asset:context StopMove set value true
data modify storage asset:context this.StopMove set value true

# 演出
	particle gust ~ ~ ~ 0.2 0.4 0.2 0 2 normal
	particle small_gust ~ ~ ~ 0.5 0.5 0.5 0.1 5 normal

# 弾丸を破壊する
	function api:common/auto_kill
