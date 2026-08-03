#> asset:attack/thunder_strike/attack_main/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.TargetID set from storage asset:context this.TargetID
	execute anchored eyes positioned ^ ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.thunder_strike_ray"}
