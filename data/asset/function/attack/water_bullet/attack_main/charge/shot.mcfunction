#> asset:attack/water_bullet/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.TargetID set from storage asset:context this.TargetID
	function api:object/summon.m {ID:"proj.water_bullet_charge"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.3
