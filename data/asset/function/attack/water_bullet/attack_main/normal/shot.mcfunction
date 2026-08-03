#> asset:attack/water_bullet/attack_main/normal/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.TargetID set from storage player:context this.StateMachine.state_data.Field.TargetID
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.water_bullet"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 1 1.3
