#> asset:attack/holy_beam/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.TargetID set from storage player:context this.StateMachine.state_data.Field.TargetID
	$execute positioned ^$(X) ^$(Y) ^$(Z) run function api:object/summon.m {ID:"proj.holy_beam_light_single"}
