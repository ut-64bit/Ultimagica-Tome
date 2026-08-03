#> asset:object/proj.water_rain_up/destroy/
#
# 死んだときに呼び出されるメソッド
#

# 爆発する
	function api:clear_in
	function api:object/summon.m {ID:"proj.water_rain_cloud"}

# 演出
	particle explosion ^ ^ ^ 0.0 0.0 0.0 0 1 force
	playsound block.conduit.deactivate neutral @a ~ ~ ~ 2 1
