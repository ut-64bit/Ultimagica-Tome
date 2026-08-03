#> asset:object/proj.water_rain/destroy/deploy
#

# 雲を出す
	function api:clear_in
	function api:object/summon.m {ID:"proj.water_rain_cloud"}

# 演出
	particle explosion ^ ^ ^ 0.0 0.0 0.0 0 1 force
	playsound block.conduit.deactivate neutral @a ~ ~ ~ 2 1
