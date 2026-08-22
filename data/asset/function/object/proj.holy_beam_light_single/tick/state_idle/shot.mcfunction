#> asset:object/proj.holy_beam_light_single/tick/state_idle/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.AttackData set from storage asset:context this.AttackData
	$execute as @n[tag=_owner,distance=..1000] facing ^$(X) ^$(Y) ^10 run function api:object/summon.m {ID:"beam.holy_beam"}
