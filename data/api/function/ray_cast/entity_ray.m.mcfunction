#> api:ray_cast/entity_ray.m
#
# 実行座標から実行方向に向けてRayを飛ばす
#
# @input
#	macro Range
#
# @output
# tag _ray
#
# @api

# Range
	$data modify storage api: in.Range set value $(Range)

# 取得する
	execute summon marker run function api:ray_cast/core/start_rec

# 引数をリセット
	data remove storage api: in.Range
