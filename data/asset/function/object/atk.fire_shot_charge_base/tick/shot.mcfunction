#> asset:object/atk.fire_shot_charge_base/tick/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.AttackData set from storage asset:context this.AttackData
	execute as @n[tag=_owner,distance=..1000] run function api:object/summon.m {ID:"proj.fire_shot"}
