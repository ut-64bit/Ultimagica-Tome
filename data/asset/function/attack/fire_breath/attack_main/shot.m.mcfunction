#> asset:attack/fire_breath/attack_main/shot.m
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.AttackData append from storage player:context this.StateMachine.state_data.Field.AttackData
	$execute facing ^$(X) ^$(Y) ^6 anchored eyes positioned ^ ^-0.25 ^0.5 rotated ~ ~3 run function api:object/summon.m {ID:"proj.fire_breath"}
