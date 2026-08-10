#> asset:object/atk.water_ray_base/tick/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.AttackData append from storage asset:context this.AttackData
	data modify storage api: in.FieldOverride.Speed set from storage asset:context this.Speed
	execute as @n[tag=_owner,distance=..1000] run function api:object/summon.m {ID:"proj.water_ray"}

# 速度をだんだん下げる
	execute unless data storage asset:context this{Speed:8} store result storage asset:context this.Speed int 0.9999999999 run \
		data get storage asset:context this.Speed 1
	execute unless data storage asset:context this{Speed:8} store result storage asset:context this.Speed int 0.9999999999 run \
		data get storage asset:context this.Speed 1
