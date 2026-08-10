#> asset:attack/thunder_spark/attack_main/shot_02
#

# 発射する
	function api:clear_in
	# data modify storage api: in.FieldOverride.AttackData append from storage player:context this.StateMachine.state_data.Field.AttackData
	data modify storage api: in.FieldOverride.NoSpread set value true
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.thunder_spark"}

# MP消費
	data modify storage api: in.Amount set value 2
	function api:player/stamina/consume
